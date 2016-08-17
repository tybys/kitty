class WelcomeController < ApplicationController
  before_filter lambda { @body_class = 'main-page' }
  def index
    @cat = Cat.all
    @user = User.joins(:cats)
  end
end
