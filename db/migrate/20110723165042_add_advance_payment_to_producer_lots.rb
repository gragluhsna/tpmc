class AddAdvancePaymentToProducerLots < ActiveRecord::Migration
  def self.up
    add_column :producer_lots, :advance_payment, :float
  end

  def self.down
    remove_column :producer_lots, :advance_payment
  end
end
