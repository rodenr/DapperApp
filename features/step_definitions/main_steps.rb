#require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require 'capybara'

Given(/^I go to the homepage$/) do
  visit '/'
#  visit path_to(page_name)
end

Then(/^I click on the sign up now button$/) do
  click_on 'Sign up now!'
end

And(/^I start filling out the form with my name$/) do
  fill_in('Name', :with => 'Da Man')
end

When /^I use an invalid email$/ do 
  fill_in('Email', :with => 'fda')
  click_on('Create my account')
end

Then /^I am told email is invalid$/ do
  expect(find('#error_explanation')).to have_content('Email')
end

When /^My password is too short$/ do
  fill_in('Password', :with => '123')
  fill_in('Confirmation', :with => '123')
  click_on('Create my account')
end

Then /^I am told the minimum is 6 characters$/ do
  expect(find('#error_explanation')).to have_content('minimum')
end

When /^I enter my information properly$/ do
  fill_in('Name', :with => 'Da Man')
  fill_in('Email', :with => 'fda@fda.fda')
  fill_in('Password', :with => '123456')
  fill_in('Confirmation', :with => '123456')
  click_on('Create my account')
end

Then /^I am in biznass$/ do
  expect(page).to have_content
end
