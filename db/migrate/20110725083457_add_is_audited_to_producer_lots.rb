class AddIsAuditedToProducerLots < ActiveRecord::Migration
  def self.up
    add_column :producer_lots, :is_audited, :boolean
  end

  def self.down
    remove_column :producer_lots, :is_audited
  end
end
