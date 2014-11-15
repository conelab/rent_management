class CreateTennants < ActiveRecord::Migration
  def change
    create_table :tennants do |t|
      t.integer :property_id
      t.string :name
      t.string :username
      t.string :encrypted_password
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :country
      t.integer  :security_deposit, :default => 0
      t.boolean :is_active, :default => true

      t.timestamps
    end
  end
end
