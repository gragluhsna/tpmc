class ProducerLot < ActiveRecord::Base
	belongs_to :producer
	has_many :producer_lot_details
end
