class RelationshipsController < ApplicationController
  before_filter :signed_in_user

  def create
    @idol = User.find(params[:relationship][:followed_id])
    current_user.follow! @idol
    redirect_to @idol
  end

  def destroy
    @bitch = Relationship.find(params[:id]).followed
    current_user.unfollow! @bitch
    redirect_to @bitch
  end
end
