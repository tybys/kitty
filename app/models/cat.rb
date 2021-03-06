class Cat < ActiveRecord::Base
	belongs_to :user
  has_many :comments

	#def as_json(options={})
		def self.search(search)
			where("name LIKE ?", "%#{search}%")
		end
	#end

  #http://127.0.0.1:3000/cats?search=12

	def self.userList
		# return self.find_by_sql(
		# 		"SELECT * FROM 'users' AS u
		# 		 JOIN 'like_likes' as l ON u.id = l.liker_id
		# 		 WHERE l.liker_id = ('#{self}')"
		# )

		where("id = :id")
	end

	has_attached_file :picture,
									styles: { medium: "300x300#", thumb: "100x100#" },
									:default_url => ActionController::Base.helpers.asset_path("kitty404.jpg")
	validates_attachment_content_type :picture, :content_type => [ 'image/gif', 'image/png', 'image/x-png', 'image/jpeg', 'image/pjpeg', 'image/jpg' ]
end