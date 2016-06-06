class CatsController < ApplicationController
  def index
    @cat = Cat.all
    #@cat2 = Cat.joins(:users)

    if params[:search]
      @catFind = Cat.search(params[:search]).order("created_at DESC")
    else
      @catFind = Cat.all.order('created_at DESC')
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new

  end

  def create
    @cat = Cat.new(cat_params)
    @cat.save
    redirect_to @cat
  end

  private
    def cat_params
      params.require(:cat).permit(:name, :text, :user_id, :picture)
    end
end
