class ProducerLot < ActiveRecord::Base
	belongs_to :producer
	has_many :producer_lot_details
	
	validates :producer_id, :presence => true
	
	accepts_nested_attributes_for :producer_lot_details, :allow_destroy => true, :reject_if => :all_blank 
end
