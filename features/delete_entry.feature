Feature: Delete a current restaurant
  
  As a Charlotte Cheap Eats user, 
  I want to be able to delet a restaurant 
  so that I can remove it if it no longer sells cheap meals for students
  near the campus.
   
Scenario: As a cheap eat user I want to be able to delete a restaurant with the delete link
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
  When I click the "Destroy" link
  Then I should be on the "Restaurant List" Page
  And the page should not say "Cook Out"
  And the page should not say "Fast Food"
  And the page should not say "4/5"
  