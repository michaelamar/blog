class CommentsController < ApplicationController
	def create
		post = BlogPost.find(params[:blog_post_id])
		comment = post.comments.new(params[:comment]) 
		comment.save
		redirect_to blog_post_url(post)
		

	end
end
