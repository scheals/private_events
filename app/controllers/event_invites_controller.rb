class EventInvitesController < ApplicationController
  def create
    @event_invite = EventInvite.new(invite_params)
    @event = Event.find(@event_invite.event_id)

    if @event_invite.save
      flash[:success] = "Successfully registered for #{@event.name}"
      redirect_to event_path(@event), id: @event.id
    else
      flash[:error] = "Unable to register for the event. Perhaps you've already registered?"
      redirect_to event_path(@event), id: @event.id, status: :unprocessable_entity
    end
  end

  private

  def invite_params
    params.require(:event_invite).permit(:event_id, :attendee_id)
  end
end