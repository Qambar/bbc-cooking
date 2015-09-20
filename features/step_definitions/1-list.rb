When(/^there are no recipes in the system$/) do
  listPage = ListPage.new(Capybara.current_session)
  listPage.visit
end

Then(/^the message "([^"]*)" is displayed$/) do |text|
  page.should have_content(text)
end