class CreateProducerLotDetails < ActiveRecord::Migration
  def self.up
    create_table :producer_lot_details do |t|
      t.integer :producer_lot_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :producer_lot_details
  end
end
