Given(/^am a registered user$/) do
    get '/edit'
    #expect(response).to render_template(:edit)
end

When(/^I visit edit page$/) do
    user = FactoryGirl.create(:user)
    #get :edit user.id
end

And(/^edit the details of the user$/) do
    # user = FactoryGirl.create(:user)
    get '/edit', id: @user
end

And(/^I should update the details$/) do
    #expect(response).to redirect_to(@user)
    #User.create(:user)
end

