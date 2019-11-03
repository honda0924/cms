class ActionCatsController < ApplicationController
  def index
    @action_cats = ActionCat.all
  end
  def new
    @action_cat = ActionCat.new
  end
  def create
    ActionCat.create(category: action_cat_params[:category])
    redirect_to action_cats_path
  end
  def edit
    @action_cat=ActionCat.find(params[:id])
  end
  def update
    @action_cat=ActionCat.find(params[:id])
    redirect_to action_cats_path
  end
  def destroy
    @action_cat=ActionCat.find(params[:id])
    @action_cat.destroy
    redirect_to action_cats_path
  end

  private

  def action_cat_params
    params.require(:action_cat).permit(:id,:category)
  end
end
