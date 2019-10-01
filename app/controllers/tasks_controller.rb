class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task_params = params.require(:task).permit(:name, :user_id, :description, :category_id)
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
    task_params = params.require(:task).permit(:name, :user_id, :description, :category_id)
 
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

  def search
    search_condition = params.require(:search_condition).permit(:query)
    if search_condition[:query].present?
      #sqlインジェクションの対応をした記述方法
      @tasks = Task.where("name LIKE :q or description LIKE :q", q: "%#{search_condition[:query]}%")
    else
      @tasks = Task.all
    end
 
    render :index
  end

  
end
