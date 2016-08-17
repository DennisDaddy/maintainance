class PagesController < ApplicationController
  def home
   @micropost = current_user.microposts.build if logged_in?
  end

  def about
  end

  def admin
  end

  def contact
  end
end
