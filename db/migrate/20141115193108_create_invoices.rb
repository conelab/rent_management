class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :price, :default => 0
      t.integer :tennant_id
      t.integer :property_id
      t.integer :amount_paid, :default => 0
      t.integer :status, :default => 0

      t.timestamps
    end
  end
end
