class User < ActiveRecord::Base
  has_secure_password
  has_many :cats

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, length: { minimum: 4, maximum: 50 }, presence: { message: 'should have some words in it' }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  #validates_presence_of :name, presense: true

  # def to_param
  #   name
  # end
end
