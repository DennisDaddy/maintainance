class PagesController < ApplicationController

  def home
   if logged_in?
   @micropost = current_user.microposts.build
   @feed_items = current_user.feed
   
end
end

  def about
  end

  def admin
  end

  def contact
  end
end
