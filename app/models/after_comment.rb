class AfterComment < ActiveRecord::Base
	belongs_to	:user
	belongs_to	:post
	validates	:content, :presence => { :message => "제목을 입력해주세요"}
end
