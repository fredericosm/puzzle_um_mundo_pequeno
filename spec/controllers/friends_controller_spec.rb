require 'spec_helper'

describe FriendsController do

  describe "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
    
    it "assigns a new friend" do
      get :new
      assigns(:friend).should_not be_nil
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get :show
      response.should be_success
    end
  end
  
  describe "POST 'create'" do
    context "when the params are valid" do
      it "creates a friend and redirects to index" do
        Friend.any_instance.should_receive(:save).and_return(true)
        post :create
        response.should redirect_to(friends_path)
      end
    end
    
    context "when the params are invalid" do
      it "re-render the form and assigns friend" do
        Friend.any_instance.should_receive(:save).and_return(false)
        post :create
        response.should render_template(:new)
        assigns(:friend).should_not be_nil
      end
    end
  end

end
