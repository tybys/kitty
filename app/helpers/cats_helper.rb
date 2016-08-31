module CatsHelper
  def catId(param)
    ActiveRecord::Base
        .connection
        .execute("SELECT * FROM 'users' AS u
                 JOIN 'like_likes' as l ON u.id = l.liker_id
                 WHERE l.likeable_id = (#{param})")
  end
end