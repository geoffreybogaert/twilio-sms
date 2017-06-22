class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.string :login
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
