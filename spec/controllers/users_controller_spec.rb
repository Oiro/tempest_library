require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  it "assigns user" do
    get :new
    expect(assigns(:user)).to be_a_new(User)
    expect(response).to render_template(:new)
  end

  context "POST#CREATE" do
    before(:each) do
      post :create, params: { user: { name: "Moses Okello", email: "moses@community.lakehub.co.ke", password: "qwerty", password_confirm: "qwerty" } }
    end

    it "saves user to the database" do
    end

    it "shows the correct flash" do
      expect(flash[:notice]).to have_content("Account successfully created")
    end

    it "redirects to the user index " do
      expect(response).to redirect_to(users_url)
    end
  end
  context "GET#EDIT" do

    it "returns an html form for editing" do
      user = FactoryGirl.create(:user)
      get :edit, params: { id: user }
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:edit)
    end
  end

  context "PUT#UPDATE" do
    it "updates element details in the database" do
      user = FactoryGirl.create(:user)   
      get :edit, params: { id: user }   
      put :update, params: {  user:  { :email => "bollocks@gmail.com"}  }
      expect(User.where(email: "bollocks@gmail.com")).to be_present
    end
  end
  context "GET#SHOW" do
    it "returns an html form for displaying results" do
      get :show
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
    end
  end
end
