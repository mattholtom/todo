class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.create(task_params)

    respond_to do |format|
      format.js
    end
  end

  private
  def task_params
    params.require(:task).permit(:name)
  end

end
