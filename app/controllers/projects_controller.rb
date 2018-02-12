class ProjectsController < ApplicationController
  
  def index
  	@projects = Project.all
  	render
  end

  def show
  	 @project = Project.find(params[:id])
  end

  def create
  	@project = Project.new
  	@project.save
  	redirect_to @project
  end

  def edit
  end

  def update
  end


  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
