class WelcomeController < ApplicationController
  before_filter lambda { @body_class = 'main-page' }
  helper WelcomeHelper

  def index
    #@cat = Cat.all
    #@catId = Cat.find_by_name(params[:id])
    #@catId = Cat.find_by_id(params[:id])
    #@user = User.joins(:cats)
    #puts @catId.inspect
    #@comment = @cat.comments.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
