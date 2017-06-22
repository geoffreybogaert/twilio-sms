class RemoveAuloFromAttendees < ActiveRecord::Migration
  def change
    remove_column :attendees, :aulo_id, :integer
  end
end
