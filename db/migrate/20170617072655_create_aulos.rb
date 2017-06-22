class CreateAulos < ActiveRecord::Migration
  def change
    create_table :aulos do |t|
      t.string :label
      t.datetime :start_at

      t.timestamps null: false
    end
  end
end
