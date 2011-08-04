module ProducerLotsHelper

  def setup_producer_lot(producer_lot)
    producer_lot.received_date = Date.today if producer_lot.new_record?
    Product.find(:all).each do |product|
      producer_lot.producer_lot_details.build(:product_id => product.id, :quantity => 0) if producer_lot.producer_lot_details.find_all_by_product_id(product.id).empty?
    end   
    
    producer_lot.producer_lot_details.each do |producer_lot_detail|
      ProductQuality.find_all_by_product_id(producer_lot_detail.product_id).each do |product_quality|
        producer_lot_detail.producer_lot_qualities.build(:product_quality_id => product_quality.id, :quantity => 0) if producer_lot_detail.producer_lot_qualities.find_all_by_product_quality_id(product_quality.id).empty?
      end
    end 
    return producer_lot
  end

	def producer_lot_details_collated(producer_lot)
		producer_lot_details = Array.new
		Product.find(:all).each do |product|
			total_quantity = ProducerLotDetail.sum(:quantity, :conditions => ["product_id = ? AND producer_lot_id = ?", product.id, producer_lot.id])
			producer_lot_details << ProducerLotDetail.new( :producer_lot_id => producer_lot.id, :product_id => product.id, :quantity => total_quantity )
		end 
		return producer_lot_details
	end
	
	def calculate_ideal_advance_payment(producer_lot)
	  unaudited_value = 0
	  producer_lot.producer_lot_details.each do |producer_lot_detail|
       unaudited_value += producer_lot_detail.quantity * get_rate_for_product(producer_lot_detail.product, producer_lot.received_date)
	  end
	  return unaudited_value * 0.5
	end
	
	def get_rate_for_product(product, received_date)
	  #ToDo create constant for B quality
	  product_quality_B_id = product.product_qualities.find_by_quality_code(product.code + "-B").id
	  return product.product_quality_purchase_rates.where("product_quality_id = ? AND start_date <= ? AND end_date >= ?", product_quality_B_id, received_date,received_date).limit(1).map(&:purchase_rate).first
	end

  def build_filter_criteria(params)
   filter_criteria = []
   filter_criteria << "producer_id = '" + params[:producer][:id].to_s + "'" if(params.has_key?(:producer))
   filter_criteria << "received_date = '" + params[:received_date].to_s + "'" if(params.has_key?(:received_date))
   
   return filter_criteria.join(" AND ")
        
  end
end