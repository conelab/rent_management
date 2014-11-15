class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.attachment :logo
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
