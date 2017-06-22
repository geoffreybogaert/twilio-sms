class CreateAddAuloToAttendees < ActiveRecord::Migration
  def change
    create_table :add_aulo_to_attendees do |t|
      t.references :aulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
