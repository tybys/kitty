class WelcomeController < ApplicationController
  def index
    @cat = Cat.all
    @user = User.joins(:cats)
  end
end
