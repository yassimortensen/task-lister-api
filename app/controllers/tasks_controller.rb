class TasksController < ApplicationController

  def index
    tasks = Task.all
    render json: tasks
  end

  def create
    task = Task.new(task_params)
    if task.save
      render json: task
    else
      render json: {errors: task.errors}
    end
  end

  def show
    task = Task.find(params[:id])
    render json: task
  end

  def update
    @task.update(task_params)
  end

  def destroy
    @task.destroy
  end

  private

  def task_params
    params.permit(:description, :list_id)
  end

end
