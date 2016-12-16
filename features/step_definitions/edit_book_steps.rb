Given(/^I am a current user or administrator\$/) do
    @book = FactoryGirl.create(:book)
end

 
And(/^I visit the edit book page$/) do
     visit edit_book_path(@book)
end

And(/^I edit the book details$/) do
    fill_in 'Title', with: 'Extreem JAVA and Perl'
    fill_in 'ISBN', with: '0723865559'
    fill_in 'Quantity', with: '7'
         click_button 'Save changes'
end

And(/^I should be edited in the database$/) do
    expect(title).not_to eq 'Beginning Ruby'
end

