class ProjectsController < ApplicationController
  before_action :set_project, only: [ :show, :edit, :update, :destroy ]
  def index
    @projects = Project.all

    if params[:search].present?
      @projects = @projects.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:category].present?
      @projects = @projects.where(category: params[:category])
    end
  end
  def show
  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(project_params)
    @project.creator = current_user
    if @project.save
      redirect_to @project, notice: "Project created successfully."
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project updated successfully."
    else
      render :edit
    end
  end
  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project deleted successfully."
  end

  private
  def project_params
    params.require(:project).permit(:name, :video, images: [], documents: [])
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
