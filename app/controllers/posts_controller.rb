class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_admin!, except: [:index, :show]
	def index
		@posts = Post.all.order("created_at desc").paginate(page: params[:page], per_page: 10)
	end
	def show

	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new post_params
		respond_to do |format|
			if @post.save
				format.html { redirect_to @post, notice: "Post successfully saved and stored" }
				format.json { render :show, status: :created, location: @post }
			else
				format.html { render 'new', notice: "Something went awry.  I was unable to save post." }
				format.json { render json: @post.errors, status: :unprocessable_entity }
			end
		end
	end
	def destroy
		@post.destroy
		respond_to do |format|
			format.html { redirect_to posts_path, notice: "The Post was successfully deleted!" }
			format.json { head :no_content } 
		end
	end
	def edit

	end
	def update
		respond_to do |format|
			if @post.update post_params
				format.html { redirect_to @post, notice: "Post updated!" }
				format.json { render :show, status: :ok, location: @post }
			else
				format.html { render 'edit' }
				format.json { render json: @post.errors, status: :unprocessable_entity }
			end
		end
	end
	private
		def post_params
			params.require(:post).permit(:title, :content, :slug)
		end
		def find_post
			@post = Post.friendly.find(params[:id])
		end
end
