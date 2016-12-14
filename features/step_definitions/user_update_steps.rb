Given(/^I am a registered user$/) do
   @user = FactoryGirl.create(:user)
end

And(/^I visit the update page$/) do
     visit edit_user_path(@user) 
end

And(/^fill in my details$/) do
    fill_in('Password', with: 'outkast')
    click_button "Save changes"
end

And(/^I should update details in the database$/) do
    
end

