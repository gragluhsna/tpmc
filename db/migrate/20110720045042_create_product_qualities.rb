class CreateProductQualities < ActiveRecord::Migration
  def self.up
    create_table :product_qualities do |t|
      t.integer :product_id
      t.string :quality_code
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :product_qualities
  end
end
