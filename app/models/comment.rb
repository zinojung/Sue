class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
	validates	:content, :presence => { :message => "내용을 입력해주세요."}
end
