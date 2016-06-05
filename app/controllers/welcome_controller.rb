class WelcomeController < ApplicationController
  def index
    @cat = Cat.all
    @user = User.joins(:cats)
    #@cat = Cat.joins(:user).select('*')
  end
end
