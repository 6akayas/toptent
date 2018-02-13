class ProjectsController < ApplicationController
  
  def index
      @projects = Project.all
  end

  def show
      @project = Project.find(params[:id])
  end

  def new
	   @project = Project.new
  end

  def create
    @project = Project.new(project_params)
      if @project.save
          flash[:success] = "Project card made!"
          redirect_to project_path(@project)
      else
          flash[:danger] = 'Input Error'
          render :action => :new
      end
  end 

  def edit
  end

  def update
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
