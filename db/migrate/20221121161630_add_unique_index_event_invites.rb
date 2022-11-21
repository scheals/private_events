class AddUniqueIndexEventInvites < ActiveRecord::Migration[7.0]
  def up
    add_index :event_invites, [:event_id, :attendee_id], unique: true
  end

  def down
    remove_index :event_invites, column: [:event_id, :attendee_id]
  end
end
