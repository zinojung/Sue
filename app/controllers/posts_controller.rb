class PostsController < ApplicationController
	def intro
	end

  def now_post
		@posts = Post.all
  end

  def after_post
		@posts = AfterPost.all
  end

  def show
  end

  def write_post
		@category = params[:category]			
  end

  def write_post_complete
		if params[:category] == "now"
			p = Post.new
		else 
			p = AfterPost.new
		end

		p.title = params[:title]
		p.content = params[:content]
		if p.save
			redirect_to "/posts/now_post"
		else
			flash[:alert] = p.errors[:content][0]
			redirect_to :back
		end
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
