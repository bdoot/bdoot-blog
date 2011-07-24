Feature: Post Management & Display
  In order to provide quality content
  As an author
  I need to be able to manage posts

  Scenario: Show Post
    Given I have a blog post
    And my post has title "My Post"
    And my post has body "This is my post"
    And my post has author with name "Brandon Doot"
    And my post was published on "November 23, 2008"
    When I display the post
    Then I should see "My Post"
    And I should see "This is my post"
    And I should see "Brandon Doot"
    And I should see "November 23, 2008"


  Scenario: Create Post
    Given I have a user named "Brandon Doot"
    When I go to the post creation page
    And I fill in "post[title]" with "My new post"
    And I fill in "post[body]" with "This is my new post."
    And I select "Brandon Doot" from "post[author_id]"
    And I fill in "post[published_on]" with "November 24, 2010"
    And I press "Save Post"
    Then I should see "My new post"
    And I should see "This is my new post."
    And I should see "Brandon Doot"
    And I should see "November 24, 2010"


 Scenario: Edit Post
    Given I have a user named "Brandon Doot"
    Given I have a blog post
    And my post has title "My Post"
    And my post has body "This is my post"
    And my post has author with name "Brandon Doot"
    And my post was published on "November 23, 2008"
    When I edit the post
    And I fill in "post[title]" with "My new post"
    And I fill in "post[body]" with "This is my new post."
    And I select "Brandon Doot" from "post[author_id]"
    And I fill in "post[published_on]" with "November 24, 2010"
    And I press "Save Post"
    Then I should see "My new post"
    And I should see "This is my new post."
    And I should see "Brandon Doot"
    And I should see "November 24, 2010"

 Scenario: Delete Post
    Given I have a blog post
    And my post has title "My Post"
    And my post has body "This is my post"
    And my post has author with name "Brandon Doot"
    And my post was published on "November 23, 2008"
    When I delete the post
    Then I should not see "My Post"
    And I should not see "This is my post"
    And I should not see "Brandon Doot"
    And I should not see "November 23, 2008"
