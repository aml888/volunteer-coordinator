class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :date
      t.integer :volunteer_id

      t.timestamps
    end
  end
end
