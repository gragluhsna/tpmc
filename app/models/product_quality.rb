class ProductQuality < ActiveRecord::Base
	belongs_to :product
	has_many :product_quality_purchase_rates
	has_many :producer_lot_qualities
	
	validates :product_id, :presence => true
end
