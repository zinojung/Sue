class PostsController < ApplicationController
	def intro
	end

	def per_school
	end

	def contact
	end

  def now_post
		@posts = Post.all
  end

  def after_post
		@posts = AfterPost.all
  end

  def show
		@posts = Post.find(params[:id])
  end

	def after_show
		@posts = AfterPost.find(params[:id])
	end

  def write_post
		@category = params[:category]			
  end

  def write_post_complete
		if params[:category] == "now"
			p = Post.new
			p.title = params[:title]
			p.content = params[:content]
			if p.save
				redirect_to "/posts/now_post"
			else
				flash[:alert] = p.errors[:content][0]
				redirect_to :back
			end
		else 
			p = AfterPost.new
			p.title = params[:title]
			p.content = params[:content]
			if p.save
				redirect_to "/posts/after_post"
			else
				flash[:alert] = p.errors[:content][0]
				redirect_to :back
			end
		end
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
