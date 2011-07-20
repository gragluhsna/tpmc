class ProductQuality < ActiveRecord::Base
	belongs_to :product
	has_many :product_quality_purchase_rates
end
