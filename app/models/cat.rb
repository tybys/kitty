class Cat < ActiveRecord::Base
  belongs_to :user

  has_attached_file :picture,
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    #default_url: "/assets/images/kitty404.jpg"
                    :default_url => ActionController::Base.helpers.asset_path("kitty404.jpg")

  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/


end
