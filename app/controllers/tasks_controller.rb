class TasksController < ApplicationController

  before_action :set_task, only: [:show, :update, :destroy]

  def index
    render json: Task.all
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
    render json: @task
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

  def set_task
    @task = Task.find(params[:id])
  end

end
