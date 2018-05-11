class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @tasks = Task.all
  end

  def show
    # runs set_task
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
