Feature: Edit a current restaurant
  
  As a Charlotte Cheap Eats user, 
  I want to be able to edit a restaurant 
  so that I can keep restaurant information up to.
   
Scenario: As a cheap eat user I want to be able to edit a restaurant with the edit a Restaurant form
  Given I am on the new restaurant page
  When I fill in "Name" with "Cook Out"
  And I fill in "Genre" with "Fast Food"
  And I fill in "Rating" with "4/5"
  And I click on the "Save Restaurant" button
  Then I should be on the "Cook Out" page
  And I should see "Cook Out"
  And I should see "Fast Food"
  And I should see "4/5"
  
  Given I am on the restaurant list page
  When I click the "Edit" link
  Then I should be on the "Edit Restaurant" Page
  And the "Name" field should say "Cook Out"
  And the "Genre" field should say "Fast Food"
  And the "Rating" field should say "4/5"
  When I edit "Genre" with "Burgers"
  And I edit "Rating" with "3/5"
  And I click "Save Restaurant"
  Then I should be on the "Cook Out" Page
  And I should see "Burgers"
  And I should see "3/5"