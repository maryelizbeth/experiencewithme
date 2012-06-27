
class UserAdventuresController < ApplicationController
  def create
    UserAdventure.create(adventure_id: params[:adventure_id],
                         user_id: params[:user_id])
    redirect_to friends_path
  end

  def new
  end

  def index
  end
end
