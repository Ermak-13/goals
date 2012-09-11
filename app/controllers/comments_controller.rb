class CommentsController < ApplicationController
	def create
		@comment = Comment.create({ sender_id: current_user.id }.merge params[:comment])
		redirect_to root_path
	end
end
