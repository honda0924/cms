class ClientsController < ApplicationController
  def index
    @client=Client.new
    @clients=Client.where(user_id: current_user.id).where(["company_name1 LIKE ? OR company_name2 LIKE ?", "%#{params[:company_search]}%","%#{params[:company_search]}%"])
    @user_clients=Client.where(user_id: current_user.id)
    @in_progress_contacts=[]
    @finished_contacts=[]
    @user_clients.each do |client|
      client.contacts.each do |contact|
        if contact.in_progress
          @in_progress_contacts << contact
        else
          @finished_contacts << contact
        end
      end
    end
    if params[:in_progress_search]
      @in_progress_contacts=@in_progress_contacts.sort{|a,b| a[:end_date]<=>b[:end_date]}.select{|x| x[:detail].include?(params[:in_progress_search])}
    else
      @in_progress_contacts=@in_progress_contacts.sort{|a,b| a[:end_date]<=>b[:end_date]}
    end
    if params[:finished_search]
      @finished_contacts=@finished_contacts.sort{|a,b| b[:end_date]<=>a[:end_date]}.select{|x| x[:detail].include?(params[:finished_search])}
    else
      @finished_contacts=@finished_contacts.sort{|a,b| b[:end_date]<=>a[:end_date]}
    end

  end
  def new
    @client=Client.new
  end
  def create
    @client=Client.new(client_params)
    if @client.save
      redirect_to clients_path
    end
  end
  def edit
    @client=Client.find(params[:id])
  end
  def update
    client =Client.find(params[:id])
    client.update(client_params)
    redirect_to root_path
  end
  def show
    @client=Client.find(params[:id])
    @clients=[]
    @clients << @client
    @contacts=@client.contacts
  end

  private
  def client_params
    params.require(:client).permit(:company_name1,:company_name2,:postcode,:addr1,:addr2,:addr3,:tel,:fax,:client_person_in_charge,:mobile,:url,:email,:client_rank_id,:client_cat_id,:closing_day_id,:payment_day_id,:payment_method_id,:user_id,contacts_attributes:[:id,:act_cat_id,:detail,:file,:start_date,:end_date,:in_progress])
  end
end
