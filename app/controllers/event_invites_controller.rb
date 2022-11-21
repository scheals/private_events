class EventInvitesController < ApplicationController
  def create
    @event_invite = EventInvite.new(invite_params)

    if @event_invite.save
      flash.now[:success] = "Successfully registered for #{Event.find(params[:id]).name}"
    else
      flash.now[:error] = 'Unable to register for the event.'
    end
  end

  private

  def invite_params
    params.require(:event_invite).permit(:event_id, :attendee_id)
  end
end
