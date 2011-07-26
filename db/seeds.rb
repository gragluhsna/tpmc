# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
products = Product.create([
  {:code => '10RP', :description => '10" Rice Plate'},
  {:code => '6QP', :description => '6" Quarter Plate'},
  {:code => '5B', :description => '5" Bowl'},
  {:code => '4B', :description => '4" Bowl'},
])

product_qualities = ProductQuality.create([
  {:quality_code => '10RP-A', :description => '10" Rice Plate A', :product => products.first},
  {:quality_code => '10RP-B', :description => '10" Rice Plate B', :product => products.first},
  {:quality_code => '10RP-R', :description => '10" Rice Plate R', :product => products.first},
  {:quality_code => '6QP-A', :description => '6" Quarter Plate A', :product => products.second},
  {:quality_code => '6QP-B', :description => '6" Quarter Plate B', :product => products.second},
  {:quality_code => '6QP-R', :description => '6" Quarter Plate R', :product => products.second},
  {:quality_code => '5B-A', :description => '5" Bowl A', :product => products.third},
  {:quality_code => '5B-B', :description => '5" Bowl B', :product => products.third},
  {:quality_code => '5B-R', :description => '5" Bowl R', :product => products.third},
  {:quality_code => '4B-A', :description => '4" Bowl A', :product => products.fourth},
  {:quality_code => '4B-B', :description => '4" Bowl B', :product => products.fourth},
  {:quality_code => '4B-R', :description => '4" Bowl R', :product => products.fourth},
])


@start_date = Time.now - 2.years
@end_date = Time.now + 2.years
@purchase_rates = [2.0,1.5,0.2,1.6,1.2,0.0,1.0,0.6,0.0,0.8,0.4,0.0]
product_qualities.each_with_index do |product_quality,index|
    ProductQualityPurchaseRate.create({:start_date => @start_date, :end_date => @end_date, :purchase_rate => @purchase_rates[index], :product_quality =>  product_quality})
end

producers = Producer.create([
  {:name => 'Producer 1', :address => 'Producer 1 Address', :phone => "11111111", :additional_details => "Producer 1 Additional Details"},
  {:name => 'Producer 2', :address => 'Producer 2 Address', :phone => "22222222", :additional_details => "Producer 2 Additional Details"},
  {:name => 'Producer 3', :address => 'Producer 3 Address', :phone => "33333333", :additional_details => "Producer 3 Additional Details"},
  {:name => 'Producer 4', :address => 'Producer 4 Address', :phone => "44444444", :additional_details => "Producer 4 Additional Details"},
])


