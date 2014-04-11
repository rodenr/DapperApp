Feature: User can visit the home page anonymously (not logged in)

Scenario: Visit home page
  Given I go to the homepage
  Then There is a sign up now button
