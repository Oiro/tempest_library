When(/^I got to login page$/) do
    visit login_path
    fill_in 'Email', with: 'moses@community.lakehub.co.ke'
  	fill_in 'Password', with: 'qwerty'
  	click_button 'Log in'
end

Then(/^user should be logged in$/) do
    visit users_path
end

Given(/^am a logged in user$/) do
    visit login_url
    fill_in 'Email', with: 'moses@community.lakehub.co.ke'
    fill_in 'Password', with: 'qwerty'
    click_button 'Log in'
end

Then(/^user can log out$/) do
    visit root_path
end

When(/^I log out$/) do
    visit root_url
end

When(/^exit user and redirect to home page$/) do
    visit root_url
end


