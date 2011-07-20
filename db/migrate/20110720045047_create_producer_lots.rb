class CreateProducerLots < ActiveRecord::Migration
  def self.up
    create_table :producer_lots do |t|
      t.integer :producer_id
      t.datetime :received_date
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :producer_lots
  end
end
