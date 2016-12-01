Given(/^am a guest user$/) do
    visit('/')
end

When(/^I visit Sign up page$/) do
    visit signup_path
end

When(/^fill in the information$/) do
	fill_in 'Name', with: 'Moses Okello'
    fill_in 'Email', with: 'moses@community.lakehub.co.ke'
    fill_in 'Password', with: 'qwerty'
    fill_in 'Password Confirmation', with: 'qwerty'
    click_button 'Sign Up!'
end

And(/^I should be signed up$/) do
	expect(User.last.email).to eq 'moses@community.lakehub.co.ke'
end

