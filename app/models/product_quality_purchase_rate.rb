class ProductQualityPurchaseRate < ActiveRecord::Base
	belongs_to :product_quality
	
	validates :product_quality_id, :presence => true
end
