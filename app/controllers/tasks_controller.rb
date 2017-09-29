class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @tasks = Task.all
    byebug
  end
end
