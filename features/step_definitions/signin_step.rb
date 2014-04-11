Given /^I go to the signin page$/ do
  visit '/signin'
end

And /^I enter an invalid signin name password combo$/ do
  fill_in('Email', :with => '')
  click_button('Sign in')
end

Then /^it returns me to the signin page with an error$/ do
  expect(find('#error_explanation')).to have_content('email')
end
