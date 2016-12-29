class User < ActiveRecord::Base
	has_many	:posts
	has_many	:comments
	validates	:username, :presence	=> { :message => "아이디를 입력하세요" }
	validates	:username, :uniqueness => { :message => "이미 존재하는 아이디입니다." :case_sensitive => false }
	validates	:password, :presence => { :message => "비밀번호를 입력하세요"}
	validates :password, :length => { :minimum => 8, :too_short => "최소 8자 이상의 비밀번호를 입력하세요"} 
	validates	:email, :presence => { :message => "이메일을 입력하세요"}
	validates :email, :uniqueness => { :message => "이미 존재하는 이메일입니다."}
end
