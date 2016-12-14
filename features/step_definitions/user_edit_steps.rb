Given(/^am a registered user$/) do
  @user = FactoryGirl.create(:user)
end

And(/^I visit the edit page$/) do
  visit edit_path(@user)
end

And(/^I fill in my details$/) do
#fill_in 'Name', with: 'Moses Okello'
#fill_in 'Email', with: 'moses@community.lakehub.co.ke'
fill_in('Password', with: 'outkast')
#fill_in('Password confirm', with: 'outkast')
click_button "Save changes"
end

And(/^I should see changes in the database$/) do

end


