module ProducerLotsHelper

	def add_producer_lot_detail_link(name)
		link_to_function name do |page|
			page.insert_html :bottom, :producer_lot_details, :partial => 'producer_lot_detail' , :object => ProducerLotDetail.new
		end
	end

end
