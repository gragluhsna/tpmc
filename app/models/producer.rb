class Producer < ActiveRecord::Base
	has_many :producer_lots, :dependent => :destroy
	
	validates :name, :presence => true
end
