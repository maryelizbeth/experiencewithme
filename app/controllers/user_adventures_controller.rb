
class UserAdventuresController < ApplicationController
  def create
    user = User.find_by_id(params[:user_id])
    user.adventures << Adventure.find_by_id(params[:adventure_id])
    user.save
    redirect_to friends_path
  end

  def new
  end

  def index
  end
end
