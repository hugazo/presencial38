class TodosController < ApplicationController
  before_action :authenticate_user!

  def create
    @task = Task.find(params[:task_id])
    @todo = Todo.new(task: @task, user: current_user)
    if @todo.save
      redirect_to tasks_path, notice: 'Tarea completada'
    else
      redirect_to tasks_path, alert: 'Tarea no guardada'
    end
  end

  def destroy

  end
end
