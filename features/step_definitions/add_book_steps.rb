Given(/^I am an administrator$/) do
  @book = FactoryGirl.create(:book)
end

When(/^I visit the book page$/) do
     visit books_path(@book)
end

And(/^I fill in the details$/) do
    fill_in 'Title', with: 'Beginning Ruby'
    fill_in 'ISBN', with: '13790590'
    fill_in 'Quantity', with: '5'
    click_button 'Add Book'
end

And(/^I should be added to the database$/) do
    Book.create(title: 'Beginning Ruby')
end


