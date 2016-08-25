class Welcome < ActiveRecord::Base
  #belongs_to :cat
  has_many :comments
end
