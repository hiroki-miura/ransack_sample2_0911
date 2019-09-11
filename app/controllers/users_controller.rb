class UsersController < ApplicationController
  def index
    user = User.new(params_user_search)
    @users = user.seach
  end

  private

  def params_user_search
    params.permit(:seach_name, :search_age)
  end

end
