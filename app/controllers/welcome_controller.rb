class WelcomeController < ApplicationController
  def index
    @cat = Cat.all
  end
end
