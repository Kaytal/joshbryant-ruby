class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :update, :edit, :destroy]
	def index
		@projects = Project.all.order("created_at desc").paginate(page: params[:page], per_page: 5)
	end
	def show

	end
	def new
		@project = Project.new
	end
	def create
		@project = Project.new project_params

		if @project.save
			redirect_to @project, notice: "New Project saved!"
		else
			render 'new'
		end
	end


	private
		def find_project
			@project = Project.friendly.find(params[:id])
		end
		def project_params
			params.require(:project).permit(:title, :description, :link, :slug)
		end
end
