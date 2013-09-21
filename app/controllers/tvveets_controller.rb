class TvveetsController < ApplicationController
  before_filter :signed_in_user

  def create
    @tvveet = current_user.tvveets.build(params[:tvveet])
    if @tvveet.save
      flash[:success] = "Tvveet posted!"
      redirect_to root_path
    else
      render "static_pages/home"
    end
  end

  def destroy

  end
end