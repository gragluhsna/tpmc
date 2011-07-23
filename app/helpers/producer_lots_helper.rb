module ProducerLotsHelper

  def setup_producer_lot(producer_lot)
    Product.find(:all).each do |product|
      producer_lot.producer_lot_details.build(:product_id => product.id, :quantity => 0) if producer_lot.producer_lot_details.find_all_by_product_id(product.id).empty?
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

end
