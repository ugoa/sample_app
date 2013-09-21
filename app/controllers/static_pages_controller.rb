class StaticPagesController < ApplicationController
  def home
    @tvveet = current_user.tvveets.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
