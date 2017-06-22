class AddOrganizerToAulos < ActiveRecord::Migration
  def change
    add_reference :aulos, :organizer, index: true, foreign_key: true
  end
end
