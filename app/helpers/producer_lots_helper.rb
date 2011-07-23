module ProducerLotsHelper

  def setup_producer_lot(producer_lot)
    producer_lot.received_date = Time.now if producer_lot.new_record?
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
		@producer_lot_details = Array.new
		Product.find(:all).each do |product|
			@total_quantity = ProducerLotDetail.sum(:quantity, :conditions => ["product_id = ? AND producer_lot_id = ?", product.id, producer_lot.id])
			@producer_lot_details << ProducerLotDetail.new( :producer_lot_id => producer_lot.id, :product_id => product.id, :quantity => @total_quantity )
		end 
		return @producer_lot_details
	end
	
	def calculate_ideal_advance_payment(producer_lot)
	  @ideal_advance = 0
	  producer_lot.producer_lot_details.each do |producer_lot_detail|
      producer_lot_detail.quantity * get_rate_for_product(producer_lot_detail.product_id)
	  end
	end
	
	def get_rate_for_product(product_id)
	  
	end

end