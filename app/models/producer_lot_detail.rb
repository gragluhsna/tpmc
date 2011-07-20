class ProducerLotDetail < ActiveRecord::Base
	belongs_to :producer_lot
	belongs_to :product
	has_many :producer_lot_qualities
	
	validates :producer_lot_id, :presence => true
	validates :product_id, :presence => true
end
