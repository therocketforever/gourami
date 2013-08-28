Given(/^I am on the Home Page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do | string |
  page.should have_content string
end