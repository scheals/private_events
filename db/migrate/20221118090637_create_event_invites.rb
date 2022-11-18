class CreateEventInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :event_invites do |t|
      t.integer :event_id, foreign_key: true
      t.integer :attendee_id, foreign_key: true

      t.timestamps
    end
  end
end
