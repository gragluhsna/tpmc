class ProducerLotQuality < ActiveRecord::Base
	belongs_to :producer_lot_detail
	belongs_to :product_quality
	
	validates :producer_lot_detail_id, :presence => true
	validates :product_quality_id, :presence => true
end
