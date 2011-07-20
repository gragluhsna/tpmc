class CreateProductQualityPurchaseRates < ActiveRecord::Migration
  def self.up
    create_table :product_quality_purchase_rates do |t|
      t.integer :product_quality_id
      t.float :purchase_rate
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :product_quality_purchase_rates
  end
end
