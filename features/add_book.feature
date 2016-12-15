Feature: New Book
         I want to add book to the database
         
               Scenario: Book is added to the database•
                        Given I am an administrator
                        When I visit the book page
                        And I fill in the details                                       
                        And I should be added to the database
