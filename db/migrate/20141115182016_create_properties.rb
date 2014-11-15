class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :company_id
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.integer :rent, :default => 0
      t.float :percent_rent_increase, :default => 10.0
      t.integer :increase_method, :default => 0
      t.datetime :last_increased, :default => Time.now

      t.timestamps
    end
  end
end
