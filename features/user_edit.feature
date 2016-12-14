Feature: Edit User
		Scenario: As a registered user 
				  I want to edit details in the database

		Given am a registered user 
		And  I visit edit page
		And  I fill in my details
		And  I should see changes in the database
