Feature: Sign up page
    Scenario: As a guest
                I want to sign up
                So that i can use the website


                Given am a guest user
                When I visit Sign up page
                And fill in the information
                Then I should be signed up
