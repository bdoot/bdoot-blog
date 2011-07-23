Feature: Post Management & Display
  In order to provde quality content
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