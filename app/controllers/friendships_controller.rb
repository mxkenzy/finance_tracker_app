class FriendshipsController < ApplicationController

  def destroy
  	@friendship = current_user.friendships.where(friend_id: params[:id]).first
  	@friendship.destroy
  	flash[:notice] = "That user was successfully removed from your friends"
  	redirect_to my_friends_path
  end

end