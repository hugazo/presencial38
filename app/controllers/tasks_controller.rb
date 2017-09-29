class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def show
    @tasks = Task.all
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  def completed?(task, user)
    task.users.exists?(user.id)
  end
end
