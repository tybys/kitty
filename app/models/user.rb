class User < ActiveRecord::Base
  has_secure_password

  has_many :cats

  def to_param
    name
  end
end
