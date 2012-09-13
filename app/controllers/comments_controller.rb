class CommentsController < ApplicationController
	def create
		@comment = Comment.create({ sender_id: current_user.id }.merge params[:comment])
		broadcast '/comments/new', @comment
		render nothing: true
	end
end
