Feature: Edit Book
         I should be able to update details

    Scenario: Book is edited 
        Given I am a current user or administrator$
        And  I visit the edit book page
        And  I edit the book details
        And  I should be edited in the database
