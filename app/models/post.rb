class Post < ActiveRecord::Base
	belongs_to :user
	has_many	:now_comments
	validates	:title, :presence => { :message => "제목을 입력해주세요"}
	validates	:content, :presence => { :message => "내용을 입력해주세요"}
end
