class ProducerLotDetail < ActiveRecord::Base
	belongs_to :producer_lot
	belongs_to :product
	has_many :producer_lot_qualities, :dependent => :destroy
	
	validates :product_id, :presence => true
end
