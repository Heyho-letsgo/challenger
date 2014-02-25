class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new(participation_params)

  if @participation.save
    redirect_to @participation.challenge, notice:'Participation was succesfull updated.'
  else
    render text:'Error !'
  end

  end

  private

  def participation_params
    params.require(:participation).permit(:user_id, :message,:challenge_id )
  end
end