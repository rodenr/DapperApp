Given /^I go to the contact page$/ do
  visit '/contact'
end

Then /^there is an email to contact$/ do
  expect(page).to have_content('@')
end

