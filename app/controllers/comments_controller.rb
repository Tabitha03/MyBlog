class CommentsController < ApplicationController
	 def edit

	 end

	 def create #Creating the actual comment. Create method must include a redirect
	 	@comment = Comment.new(comment_params)
  	respond_to do|format| #respond is a callback that callsit back after a certain point in it's life cycle
  		if @comment.save
  			format.html {redirect_to @ blog_post, (id: @comment.blog_post_id), notice: "Blog post was created successfully."} 
  		else
  			format.html {redirect_to @ blog_post, (id: @comment.blog_post_id), notice: "Comment failed to post."}
  		end
	end
end

def update 
	respond_to do |format|
		if @comment.update(comment_params)
			format.hmtl {redirect_to @blog_post_pathe(id: @comment.blog_posts_id), notice: "Your comment has been updated." 
			else
  			format.html {render :edit}
  		end
  	end
  end

  def destroy 
  	@blog_post.destroy
  	respond_to do |format| #rt in it's life epond is a callback that calls it back after a certain point in it's life cycle
  		format.html {redirect_to blog_post_path(id: @comment.blog_post_id),  notice: "Post was deleted successfully".
  	end
  def edit
  end
end
