class FriendsController < ApplicationController
  def index
  end

  def new
    @friend = Friend.new
  end

  def show
  end
  
  def create
    @friend = Friend.new(params[:friend])
    if @friend.save
      redirect_to friends_path, notice: "Amigo adicionado com sucesso"
    else
      render :new
    end
  end
end
