class ActCatsController < ApplicationController
  def index
    @act_cats = ActCat.all
  end
  def new
    @act_cat = ActCat.new
  end
  def create
    ActCat.create(category: act_cat_params[:category])
    redirect_to act_cats_path
  end
  def edit
    @act_cat=ActCat.find(params[:id])
  end
  def update
    @act_cat=ActCat.find(params[:id])
    redirect_to act_cats_path
  end
  def destroy
    @act_cat=ActCat.find(params[:id])
    @act_cat.destroy
    redirect_to act_cats_path
  end

  private

  def act_cat_params
    params.require(:act_cat).permit(:id,:category)
  end
end
