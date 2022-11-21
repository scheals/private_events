class EventInvite < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :event

  validates :event_id, presence: true, uniqueness: { scope: :attendee_id }
end
