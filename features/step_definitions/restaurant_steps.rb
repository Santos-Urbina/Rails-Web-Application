Given(/^I am on the home page$/) do
   visit root_path
end

When(/^I click on the "([^"]*)" link$/) do |page_name|
  click_link page_name
end

Then(/^I should be on the "([^"]*)" page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^I should see the "([^"]*)" field$/) do |field_name|
  expect(page).to have_field(field_name)
end


Given("I am on the new restaurant page") do
  visit new_restaurant_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in(field, with: text)
end

When(/^I click on the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

