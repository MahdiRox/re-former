class UsersController < ApplicationController
   def new
    @user = User.new
   end

   def edit
    @user = User.find(params[:id])
   end


   def update
    
   end



#    def update
#     @user = User.find(params[:id])
#        if @user.update_attributes(params[:user])
#          flash[:success] = "Object was successfully updated"
#          redirect_to @user
#        else
#          flash[:error] = "Something went wrong"
#          render 'edit'
#        end
#    end
   
   
   
   def create
    
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path notice: "User created"
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  def user_params
    params.require(:user).permit(:username,:email,:password)
  end
    
end
