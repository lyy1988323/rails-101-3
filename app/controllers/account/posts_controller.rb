class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def update
     if @group.update(group_params)
           redirect_to groups_path, notice: "Update Success"
         else
           render :edit
         end
  end

   def destroy
     @group.destroy
     flash[:alert] = "Group deleted"
     redirect_to groups_path
   end
   
end
