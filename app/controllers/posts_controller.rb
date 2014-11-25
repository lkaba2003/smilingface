class PostsController < ApplicationController
	
	before_filter :authenticate_user! #This will restrict other get in the application by guesting the url.

	def index
		@post = Post.all	
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])	
	end

	def edit
		@post = Post.find(params[:id])

		#unless @post.user == current_user (This block is same as the line below)
		#	redirect_to root_path
		#end
		#redirect_to root_path unless current_user == @post.user
		allow_owner
	end

	def create
		@post = current_user.posts.create(post_params)

		if @post.save
			flash[:notice] = "Your post was successfully created" 
			redirect_to posts_path
		else
			render "new"
		end
	end

	def update
		@post = Post.find(params[:id])
		allow_owner
		if @post.update_attributes(post_params)
			flash[:notice] = "Your post was successfully updated"
			redirect_to posts_path
		else
			render "edit"
		end
	end	

	def destroy
		@post = Post.find(params[:id])
		allow_owner
		@post.destroy
		flash[:notice] = "Your post was successfully deleted"
		redirect_to posts_path
	end


	private
		def post_params
			params.require(:post).permit(:content, :image)
			
		end

		def allow_owner
			redirect_to root_path unless current_user == @post.user
		end


end
