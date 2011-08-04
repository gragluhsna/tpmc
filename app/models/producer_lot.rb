class ProducerLot < ActiveRecord::Base
	belongs_to :producer
	has_many :producer_lot_details, :dependent => :destroy
	
	validates :producer_id, :presence => true
	
	accepts_nested_attributes_for :producer_lot_details, :allow_destroy => true, :reject_if => :all_blank
	
	scope :received_on, lambda {|date| { :conditions => ["DATE(received_date) =?",date]}}
	scope :produced_by, lambda {|producer| where(:producer_id => producer.id)}
	scope :audited,  where(:is_audited => true) 
	scope :unaudited, where(:is_audited => false)
	
end
