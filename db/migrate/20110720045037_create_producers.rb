class CreateProducers < ActiveRecord::Migration
  def self.up
    create_table :producers do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.text :additional_details

      t.timestamps
    end
  end

  def self.down
    drop_table :producers
  end
end
