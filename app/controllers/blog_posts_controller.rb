class BlogPostsController <ApplicationController
  before_action :set_blog_post, only: [:show, :update, :destroy]
	 
  
  def index
  	@blog_posts = BlogPost.all
  end

  def new
  	@blog_post = BlogPost.new
  end

  def edit
  	
  end

  def show
  end

  def create
  	@blog_post = BlogPost.new(blog_post_params)
  	respond_to do|format|
  		if @blog_post.save
  			format.html {redirect_to @blog_post, notice: "Blog post was created successfully."} 
  		else
  			format>html {render :new}
  		end
	end
end

def update 
	respond_to do |format|
		if @blog_post.update(blog_post_params)
			format.hmtl {redirect_to @blog_post, notice: "Blog post was updated successfully."}
			else
  			format.html {render :edit}
  		end
  	end
  end

  def destroy 
  	@blog_post.destroy
  	respond_to do |format|
  		format.html {redirect_to blog_post_url, notice: "Your blog post was DESTROYEDDDDD!!!!"}
  	end
end

private

def blog_post_params
	params.require(:blog_post).permit(:title,:author, :blog_entry)
	
	end
def set_blog_post
	@blog_post = BlogPost.find(params[:id])

end
end

