class UsersController < ActionController::Base

  def create
    @user = User.new(user_params)
    
  end
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :profile_name)
  end
 

end