class Product < ActiveRecord::Base
	has_many :producer_lot_details, :dependent => :destroy
	has_many :product_qualities, :dependent => :destroy
	has_many :product_quality_purchase_rates, :through => :product_qualities
	
	accepts_nested_attributes_for :product_qualities, :allow_destroy => true
end
