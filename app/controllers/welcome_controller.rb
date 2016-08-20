class WelcomeController < ApplicationController
  before_filter lambda { @body_class = 'main-page' }
  helper WelcomeHelper

  def index
    @cat = Cat.all
    @catId = Cat.find_by_name(params[:id])
    @user = User.joins(:cats)
  end
end
