class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def show
    @tasks = Task.all
    @task = Task.find(params[:id])
    @top5 = @task.todos.order(:created_at).limit(5)
  end

  def index
    @tasks = Task.all
  end

  def completed?(task, user)
    task.users.exists?(user.id)
  end
end
