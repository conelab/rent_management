class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
