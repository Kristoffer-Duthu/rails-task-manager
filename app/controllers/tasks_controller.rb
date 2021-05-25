class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task.update(params[:task])
  end

  def destroy
    @task = Task.find(params[:id])
    @Task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end