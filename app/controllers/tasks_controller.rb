class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @tasks = Task.all
  end

  def completed?(task, user)
    task.users.exists?(user.id)
  end
end
