Feature: Edit User
		Scenario: As a guest user 
				  I want to edit details in the database

		Given am a registered user 
		When I visit edit page
		And edit the details of the user
		And I should update the details