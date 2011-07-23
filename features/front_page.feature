Feature: Front Page
  In order to see the most recent posts
  As a reader
  I want the 5 most recent posts on the front page

  Scenario: I post in blog
    Given I have a blog post
    And my post has title "My Post"
    And my post has body "This is my post"
    And my post has author with name "Brandon Doot"
    And my post was published on "November 23, 2008"
    When I go to the homepage
    Then I should see "My Post"
    And I should see "This is my post"
    And I should see "Brandon Doot"
    And I should see "November 23, 2008"
