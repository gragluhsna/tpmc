class ProductQuality < ActiveRecord::Base
	belongs_to :product
	has_many :product_quality_purchase_rates, :dependent => :destroy
	has_many :producer_lot_qualities, :dependent => :destroy
	
	validates :product_id, :presence => true
end
