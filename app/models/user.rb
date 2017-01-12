class User < ActiveRecord::Base
	has_many	:posts
	has_many	:now_comments
	has_many 	:after_comments
	validates	:nickname, :presence	=> { :message => "별명을 입력하세요" }
	validates	:nickname, :uniqueness => { :message => "이미 존재하는 별명입니다"}
	validates	:password, :presence => { :message => "비밀번호를 입력하세요"}
	validates :password, :length => { :minimum => 8, :too_short => "최소 8자 이상의 비밀번호를 입력하세요"} 
	validates	:email, :presence => { :message => "이메일을 입력하세요"}
	validates :email, :uniqueness => { :message => "이미 존재하는 이메일입니다."}
end
