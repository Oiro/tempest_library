Given(/^I am an admin and a frequent registered user$/) do
    
end

When(/^I visit the book show page$/) do
   visit books_url
end

And(/^Details of the book show page are displayed$/) do
    expect(page).to have_content(:notice)
end
