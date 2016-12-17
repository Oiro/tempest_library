Given(/^I am admin and a registered user$/) do
   @book = FactoryGirl.create(:book)
end

And(/^I visit the book update page$/) do
    visit edit_book_path(@book)
end

And(/^fill in my book details$/) do
    fill_in('Title', with: 'Fundamentals of IDE Environment Development')
    click_button "Save changes"
end

And(/^I should update book details in the database$/) do
    expect(title).not_to eq 'Beginning Ruby'
end


