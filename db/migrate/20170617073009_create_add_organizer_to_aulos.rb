class CreateAddOrganizerToAulos < ActiveRecord::Migration
  def change
    create_table :add_organizer_to_aulos do |t|
      t.references :organizer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
