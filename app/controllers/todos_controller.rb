class TodosController < ApplicationController
  before_action :authenticate_user!

  def create
    @task = Task.find(params[:task_id])
    @todo = Todo.new(task: @task, user: current_user)
    if @todo.save
      redirect_to tasks_path, notice: 'Tarea marcada como completada'
    else
      redirect_to tasks_path, alert: 'Acción no completada'
    end
  end

  def destroy
    @todo = Todo.where(user_id: current_user.id, task_id: params[:task_id]).take
    if @todo.destroy
      redirect_to tasks_path, notice: 'Tarea marcada como no completada'
    else
      redirect_to tasks_path, alert: 'Acción no completada'
    end
  end
end
