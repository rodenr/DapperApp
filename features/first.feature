#encoding: utf-8 

Feature: Showcase the simplest possible Cucumber scenario 

 In order to verify that login form is installed and configured correctly 

 As an aspiring BDD fanatic 

 I should be able to run this scenario and see that the steps pass (green like a cuke) 

 

Scenario: Cutting html fields 
	Given a login form that is 30 cm long 
	When I cut it in halves 
	Then I have two login forms 
	And both are 15 cm long
