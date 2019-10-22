class ClientCatsController < ApplicationController
  def index
    @client_cats = ClientCat.all
  end
  def new
    @client_cat = ClientCat.new
  end
  def create
    ClientCat.create(category: client_cat_params[:category])
    redirect_to client_cats_path
  end
  def edit
    @client_cat=ClientCat.find(params[:id])
  end
  def update
    @client_cat=ClientCat.find(params[:id])
    redirect_to client_cats_path
  end
  def destroy
    @client_cat=ClientCat.find(params[:id])
    @client_cat.destroy
    redirect_to client_cats_path
  end

  private

  def client_cat_params
    params.require(:client_cat).permit(:id,:category)
  end
end
