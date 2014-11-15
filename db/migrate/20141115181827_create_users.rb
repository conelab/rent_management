class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :company_id
      t.boolean :is_owner_of_company
      t.string :username
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
