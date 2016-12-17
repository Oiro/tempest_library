Feature: User Update Page

    Scenario: As a registered user
              I should be able to update my details

              Given I am a registered user
              And I visit the update page
              And fill in my details
              And I should update details in the database
