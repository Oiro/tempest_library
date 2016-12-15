When(/^I visit the show page$/) do
   visit users_path
end

And(/^Details of the user are displayed$/) do
    expect(page).to have_content(:notice)
end

