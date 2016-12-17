Feature: Book Update Page

        Scenario: As a registered user
                  I should be able to update my details

                  Given I am admin and a registered user
                  And I visit the book update page
                  And fill in my book details
                  And I should update book details in the database
