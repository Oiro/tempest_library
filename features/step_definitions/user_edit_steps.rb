Given(/^am a registered user$/) do
#visit login_path
#fill_in 'Email', with: 'moses@community.lakehub.co.ke'
#fill_in 'Password', with: 'qwerty'
@user = FactoryGirl.create(:user)
end

And(/^I visit edit page$/) do
  #get '/edit'
  visit edit_path(@user)
  #visit '/users/:id/edit'
end

And(/^I edit my details$/) do
#fill_in 'Name', with: 'Moses Okello'
#fill_in 'Email', with: 'moses@community.lakehub.co.ke'
fill_in('Password', with: 'outkast')
#fill_in('Password confirm', with: 'outkast')
click_button "Save changes"
end

And(/^I should see changes in the database$/) do

end


