Feature: add and remove movies from RottenPotatoes
  
  As a site administrator
  So that I can change what movies are on the platform
  I want to add and remove movies from the site
  
Scenario: create a movie with director
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  And I fill in "Title" with "asdf"
  And I fill in "Director" with "asdf_director"
  And I select "R" from "Rating"
  And I press "Save Changes"
  Then I should see "asdf"
  
Scenario: create a movie without director
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  And I fill in "Title" with "asdf"
  And I select "R" from "Rating"
  And I press "Save Changes"
  Then I should see "asdf"
  
Scenario: delete a movie
  Given the following movies exist:
    | title                   | rating | release_date |
    | Aladdin                 | G      | 25-Nov-1992  |
    | The Terminator          | R      | 26-Oct-1984  |
    | When Harry Met Sally    | R      | 21-Jul-1989  |
    | The Help                | PG-13  | 10-Aug-2011  |
    | Chocolat                | PG-13  | 5-Jan-2001   |
    | Amelie                  | R      | 25-Apr-2001  |
    | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
    | The Incredibles         | PG     | 5-Nov-2004   |
    | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
    | Chicken Run             | G      | 21-Jun-2000  |
  And I am on the details page for "Aladdin"
  When I press "Delete"
  Then I should see "Movie 'Aladdin' deleted"