Feature: Log in Log out
         I want to log in and log out
    Scenario: User can log in
                When I got to login page
                Then user should be logged in

            Scenario: User can log out
            Given am a logged in user
            Then user can log out

                    Scenario: User cannot log out twice
                        When I log out
                        And exit user and redirect to home page
