class RelationshipsController < ApplicationController

	before_filter :authenticate_user!

	def following
		@relationship = current_user.relationships
	end

	def follower
		@relationship = current_user.relationships
	end

	def create
		@relationship = current_user.relationships.create(following_id: params[:relationship][:following_id])
		flash[:notice] = "You have now followed "
		redirect_to posts_path
	end

	def destroy
		@relationship = Relationship.find(params[:id])
		@relationship.destroy
		flash[:notice] = "You have now unfollowed"
		redirect_to posts_path
	end
end
