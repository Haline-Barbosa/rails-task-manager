class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(params[:task])
    @tasks.save!
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy

    redirect_to tasks_path
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(params[:task])
  end
end
