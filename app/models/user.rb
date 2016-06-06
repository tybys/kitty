class User < ActiveRecord::Base
  has_secure_password

  has_one :profile
  has_many :cats
end
