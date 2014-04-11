Feature: User can visit the home page anonymously (not logged in)

Scenario: Visit home page
  Given I go to the homepage
  Then I click on the sign up now button
  And I start filling out the form with my name
  When I use an invalid email
  Then I am told email is invalid
  When My password is too short
  Then I am told the minimum is 6 characters
  When I enter my information properly
  Then I am in biznass

Scenario: Visit Contact page
  Given I go to the contact page
  Then there is an email to contact
