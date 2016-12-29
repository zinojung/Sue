class Post < ActiveRecord::Base
	belongs_to :user
	has_many	:comments
	validates	:category, :inclusion => { :in => ["고발해요","해결했어요"] }
	validates	:title, :presence => { :message => "제목을 입력해주세요"}
	validates	:content, :presence => { :message => "내용을 입력해주세요"}
end
