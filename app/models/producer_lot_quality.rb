class ProducerLotQuality < ActiveRecord::Base
	belongs_to :producer_lot_detail
	belongs_to :product_quality
	
	validates :product_quality_id, :presence => true
end
