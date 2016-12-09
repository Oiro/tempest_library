require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  it "assigns user" do

    get :new
    
    expect(assigns(:user)).to be_a_new(User)
    expect(response).to render_template(:new)
    #expect(response).to have_http_status(:created)

  end

  it "creates new user" do
  
   #before_count = User.count
   #post :create, { :user => { :email => "moses@community.lakehub.co.ke"  }  }
   #post :create, params: { user: {name: "Moses Okello", email: "moses@community.lakehub.co.ke", password: "qwerty", password_confirm: "qwerty"}  }
   
   # confirm the user is created
   # User.create(email: 'moses@community.lakehub.co.ke') 
   # expect(@user).to eq @user
   # expect(User.count).not_to eq(before_count)
   # confirm the flash is showing
   #expect(flash[:notice]).to have_content("Account successfully created")

   # confirms redirect_to whichever the page
   #expect(subject).to redirect_to :action => :show
                                          
   #expect(subject).to redirect_to(users_url)
   #expect(response).to redirect_to(users_url) 
  
  end

  context "POST#CREATE" do

  it "saves user to the database" do
     
      before_count = User.count

      post :create, params: { user: { name: "Moses Okello", email: "moses@community.lakehub.co.ke", password: "qwerty", password_confirm: "qwerty" } }

      expect(User.count).not_to eq(before_count)

  end

   it "shows the correct flash" do

      post :create, params: { user: { name: "Moses Okello", email: "moses@community.lakehub.co.ke", password: "qwerty", password_confirm: "qwerty" } }
   
      expect(flash[:notice]).to have_content("Account successfully created")
   end

  it "redirects to the user index " do

      post :create, params: { user: { name: "Moses Okello", email: "moses@community.lakehub.co.ke", password: "qwerty", password_confirm: "qwerty" } }
      expect(response).to redirect_to(users_url)
  
  end

  end
end
