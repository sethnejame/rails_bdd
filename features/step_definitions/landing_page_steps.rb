# List Article Feature Tests

When("I visit the site") do
    visit root_path
  end
  
Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

# Create Article Feature Tests

Given("I visit the {string} page") do |string|
  visit root_path
end

When("I click on {string}") do |string|
  click_on string
end

When("I click on the {string} link") do |string|
  first(:link, string).click
end

When("I fill in {string} with {string}") do |field, input|
  fill_in field, with: input
end

When("I click {string} button") do |button|
  click_on button
end

Then("I should be on {string} page") do |content|
  expect(page).to have_content content
end