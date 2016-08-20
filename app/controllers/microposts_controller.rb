class MicropostsController < ApplicationController
 before_action :logged_in_user, only: [:create, :destroy]
 before_action :correct_user, only: :destroy

  def create
  @micropost = current_user.microposts.build(micropost_params)
if @micropost.save
flash[:success] = "Maintainance report created!"
redirect_to root_url
else
render 'pages/home'
 end
end

  def destroy
    @micropost.destroy
    flash[:success] = "Report Deleted"
    redirect_to request.referrer || root_url
 end
private

 def micropost_params
  params.require(:micropost).permit(:content)
end

 def correct_user
   @micropost = current_user.microposts.find_by(id: params[:id])
   redirect_to root_url if @micropost.nil?
 end
end
