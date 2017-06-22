class CreateAuloAttendeesRelationships < ActiveRecord::Migration
  def change
    create_table :aulo_attendees_relationships do |t|
      t.references :aulo, index: true, foreign_key: true
      t.references :attendee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
