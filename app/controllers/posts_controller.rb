class PostsController < ApplicationController
	before_action :login_check
	skip_before_action	:login_check, :only => [:intro, :per_school, :now_post, :after_post, :show, :after_show]

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

  def now_show
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
			p.user_id = session[:user_id]
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
			p.user_id = session[:user_id]
			p.content = params[:content]
			if p.save
				redirect_to "/posts/after_post"
			else
				flash[:alert] = p.errors[:content][0]
				redirect_to :back
			end
		end
  end

  def now_post_edit
		@post = Post.find(params[:id])
  end

	def after_post_edit
		@post = AfterPost.find(params[:id])
	end

  def now_post_edit_complete
		post = Post.find(params[:post_id])
		post.title = params[:title]
		post.content = params[:content]
		if !post.save
			flash[:alert] = post.errors[:content][0]
			redirect_to :back
		else
			redirect_to	:action => "show", :id => post.id 
		end
  end

	def after_post_edit_complete
		post = AfterPost.find(params[:post_id])
		post.title = params[:title]
		post.content = params[:content]
		if !post.save
			flash[:alert] = post.errors[:content][0] 
			redirect_to :back
		else
			redirect_to :action => "after_show", :id => post.id 
		end
	end

  def now_post_delete
		@post = Post.find(params[:id])
  end

	def now_post_delete_complete
		post = Post.find(params[:post_id])
		if post.user.nickname == params[:nickname]
			post.destroy
			redirect_to "/posts/now_post"
		else 
			flash[:alert] = "닉네임이 맞지않습니다"
			redirect_to :back
		end
	end

	def after_post_delete
		@post = AfterPost.find(params[:id])
  end

	def after_post_delete_complete
		post = AfterPost.find(params[:post_id])
		if post.user.nickname == params[:nickname]
			post.destroy
			redirect_to "/posts/after_post"
		else 
			flash[:alert] = "닉네임이 맞지않습니다"
			redirect_to :back
		end
	end
end
