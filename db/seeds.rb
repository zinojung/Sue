# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	0.upto(5) do |i|
		p = Post.new
		p.user_id = i + 1
		p.title = "우리학교 #{i} 제목"
		p.content = "우리학교 #{i} 설명"
		p.save

		y = AfterPost.new
		y.user_id = i + 1
		y.title = "이렇게 해결했어요 #{i}"
		y.content = "저는요 #{i}"
		y.save
	end
end
