
class FriendsController < ApplicationController
  def index
    @friend = Friend.new
    @friends = current_user.friends
  end

  def create 
    friend = Friend.new(params[:friend])
    if friend.save
      redirect_to friends_path
    else
      @friend = Friend.new
      @friends = current_user.friends
      flash[:notice] = "It looks like you've already added that friend."
      render :index
    end 
  end 
end
