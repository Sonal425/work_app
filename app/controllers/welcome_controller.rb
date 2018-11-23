class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.type == "JobSeeker"
      render "jobs/index"
    elsif current_user.type == "JobProvider"
       render "users/index"
    end
  end
end
