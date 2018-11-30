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



Given("I am on the restaurant list page") do
  visit restaurants_path
end

When(/^I click the "([^"]*)" link$/) do |link|
  click_link link
end

Then(/^I should be on the "([^"]*)" Page$/) do |page_name|
  expect(page).to have_content(page_name)
end

Then(/^the "([^"]*)" field should say "([^"]*)"$/) do |field, content|
  expect(find_field(field).value).to have_content(content)
end

When(/^I edit "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in(field, with: content)
end

When(/^I click "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^the page should not say "([^"]*)"$/) do |content|
  page.should_not have_content(content)
end