  
Then("I should see {string}") do |content|
    expect(page).to have_content content
  end

Then("I should be on {string} page") do |content|
    expect(page).to have_content content
end

Then("I should not see {string}") do |content|
    expect(page).not_to have_content content
end

Given("the following articles exists") do |table|
    table.hashes.each do |article|
      Article.create!(article)
    end
end

Given("the following user exists") do |table|
    table.hashes.each do |user|
      FactoryBot.create(:user, user)
    end
end