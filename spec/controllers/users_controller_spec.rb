require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  it "assigns user" do

    get :new
    
    expect(assigns(:user)).to be_a_new(User)
    #expect(response).to render_template(:new)
    #expect(response).to have_http_status(:created)

  end
end
