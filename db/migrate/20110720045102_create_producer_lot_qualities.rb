class CreateProducerLotQualities < ActiveRecord::Migration
  def self.up
    create_table :producer_lot_qualities do |t|
      t.integer :producer_lot_detail_id
      t.integer :product_quality_id
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :producer_lot_qualities
  end
end
