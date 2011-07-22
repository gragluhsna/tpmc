module ProducerLotsHelper

	def producer_lot_details_collated(producer_lot)
		#@producer_lot_details = producer_lot.producer_lot_details.joins(:product).order("products.code")
		@producer_lot_details = Array.new
		Product.find(:all).each do |product|
			@total_quantity = ProducerLotDetail.sum(:quantity, :conditions => ["product_id = " + product.id.to_s , "producer_lot_id = " + producer_lot.id.to_s])
			@producer_lot_details << ProducerLotDetail.new 
			#{ producer_lot_id => producer_lot.id, product_id => product.id, quantity => @total_quantity }
		end 
		return @producer_lot_details
	end

end
