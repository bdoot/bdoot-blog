
When /^I display the post$/ do
  visit "/post/#{@post.id}"
end

Given /^I have a user named "([^"]*)"$/ do |name|
  User.create(:name => name)
end

When /^I edit the post$/ do
  visit "/posts/edit/#{@post.id}"
end