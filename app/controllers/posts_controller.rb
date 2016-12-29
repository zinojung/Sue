class PostsController < ApplicationController
	def intro
	end

  def now_post
		@posts = Post.where(category: "고발해요")
  end

  def after_post
		@posts = Post.where(category: "해결했어요")
  end

  def show
  end

  def write
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
