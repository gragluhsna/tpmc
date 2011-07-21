class Product < ActiveRecord::Base
	has_many :producer_lot_details, :dependent => :destroy
	has_many :product_qualities, :dependent => :destroy
	
	accepts_nested_attributes_for :product_qualities, :allow_destory => true
end
