Feature: Show Book    
        Scenario: As an admin and a registered user 
                 I want to display show details as users

                  Given I am an admin and a frequent registered user
                  When I visit the book show page
                  And Details of the book show page are displayed
