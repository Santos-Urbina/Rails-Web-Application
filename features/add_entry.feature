Feature: Add a new restaurant
  
  As a Charlotte Cheap Eats user, 
  I want to be able to add a new restaurant 
  so that I can help others find a restaurant.
  
 Scenario: As a cheap eat user I want to be able to navigate from the homepage to the new restaurant form
   Given I am on the home pages
   When I click on the "Restaurants" link
   Then I should be on the "Restaurant List" page
   When I click on the "Add a Restaurant" link
   Then I should be on the "Add a Restaurant" page
   And I should see the "Name" field
   And I should see the "Genre" field
   And I should see the "Rating" field