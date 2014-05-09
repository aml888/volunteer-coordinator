class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :volunteer_id
      t.integer :event_id
      t.string :number

      t.timestamps
    end
  end
end
