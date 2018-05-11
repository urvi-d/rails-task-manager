class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @tasks = Task.all
  end

  def show
    # runs set_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

private

  def set_task
    @task = Task.find(params[:id])
  end
end

def task_params
  params.require(:task).permit(:title, :details)
end
