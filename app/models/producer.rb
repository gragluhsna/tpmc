class Producer < ActiveRecord::Base
	has_many :producer_lots
	
	validates :name, :presence => true
end
