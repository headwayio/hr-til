Feature: Developer edits post

  Scenario: Developer edits post
    Given I am a signed in developer
    And I have a post
    And I visit the homepage
    When I click edit
    Then I see the edit page for that post
    When I enter new information into that form
    And I click submit
    Then I see the show page for that edited post
    And I see a message "Post updated"

  Scenario: Developer can't edit other developer's posts
    Given I am a signed in developer
    And a post exists by another developer
    When I visit the edit page for that post
    Then I see an error message "Access denied"

  Scenario: Developer edits post with invalid data
    Given I am a signed in developer
    And I have a post
    And I visit the homepage
    When I click edit
    Then I see the edit page for that post
    When I edit the post to no longer have a body
    And I click submit
    Then I see an error message "Body can't be blank"