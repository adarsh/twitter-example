When /^I go to the homepage$/ do
  visit '/'
end

When /^I enter "([^"]*)" in the search field$/ do |hashtag|
  fill_in "Search", with: hashtag
  click_button "Search"
end

Then /^I should see tweets with "([^"]*)"$/ do |hashtag|
  within "ul" do
    page.should have_css("li", text: hashtag)
  end
end
