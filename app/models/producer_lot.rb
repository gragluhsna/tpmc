class ProducerLot < ActiveRecord::Base
	belongs_to :producer
	has_many :producer_lot_details
	
	validates :producer_id, :presence => true
end
