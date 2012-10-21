Feature: SauceLabs Documentation
	In order to learn SauceLabs features
	As a Software Tester
	I need see resource

@javascript
Scenario: Access feaures
Given I am on "/"
When I follow "Features"
And I saw page loaded
Then I should be on "/features"
And I should see "Check out our features."

@javascript @android
Scenario: Access feauresss
Given I am on "/features"
Then I should see "Check out our features."
