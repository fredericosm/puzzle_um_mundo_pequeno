class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end

  def show
    @friend = Friend.find(params[:id])
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
