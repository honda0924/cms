class ClientRanksController < ApplicationController
  def index
    @client_ranks = ClientRank.all
  end
  def new
    @client_rank = ClientRank.new
  end
  def create
    ClientRank.create(rank: client_rank_params[:rank])
    redirect_to client_ranks_path
  end
  def edit
    @client_rank=ClientRank.find(params[:id])
  end
  def update
    @client_rank=ClientRank.find(params[:id])
    redirect_to client_ranks_path
  end
  def destroy
    @client_rank=ClientRank.find(params[:id])
    @client_rank.destroy
    redirect_to client_ranks_path
  end

  private

  def client_rank_params
    params.require(:client_rank).permit(:id,:rank)
  end

end
