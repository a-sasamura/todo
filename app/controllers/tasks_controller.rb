class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task_params = params.require(:task).permit(:name, :description)
    @task = Task.new(task_params)
  
    if @task.save
      redirect_to tasks_path, notice: 'タスクが作成されました'
    else
      render :new
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    task_params = params.require(:task).permit(:name, :description)
 
    if @task.update(task_params)
      redirect_to tasks_path, notice: 'タスクが更新されました'
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: 'タスクが削除されました'
  end


  
end
