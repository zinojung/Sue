class UserController < ApplicationController
  def sign_up
  end

  def sign_up_complete
		u = User.new
		u.nickname = params[:nickname]
		u.email	= params[:email]
		if params[:password] != params[:password_confirm]
			flash[:alert] = "비밀번호가 같지 않습니다."
			redirect_to :back
		else
			u.password = params[:password]
			if u.save
				redirect_to "/posts/intro"
			else
				flash[:alert] = u.errors.values.flatten.join(' ') 
				redirect_to :back
			end
		end
  end

  def log_in
  end

  def log_in_complete
		user = User.where(email: params[:email])[0]
		if user.nil?
			flash[:alert] = "이메일이나 비밀번호가 맞지 않습니다."
			redirect_to :back
		elsif user.password != params[:password]
				flash[:alert] = "이메일이나 비밀번호가 맞지 않습니다."
				redirect_to :back
		else
				session[:user_id] = user.id
				redirect_to "/"
		end
 	 end

	 def log_out_complete
	 	reset_session
		redirect_to "/"
	 end
end
