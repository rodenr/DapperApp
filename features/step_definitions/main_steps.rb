#require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require 'capybara'

Given(/^I go to the homepage$/) do
  visit '/'
#  visit path_to(page_name)
end

Then(/^There is a sign up now button$/) do
  pending # express the regexp above with the code you wish you had
end

