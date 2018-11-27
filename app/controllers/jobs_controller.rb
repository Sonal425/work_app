class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    @requirements = ['java', 'ruby', 'html', 'css']
  end
end
