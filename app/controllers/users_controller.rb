class UsersController < ApplicationController
  def show
  end
  def index
    if current_user.type == 'JobSeekeer'
      user_type = 'JobProvider'
    elsif current_user.type == 'JobProvider'
      user_type = 'JobSeeker'
    end
    @users = User.where(type: user_type)
  end
end
