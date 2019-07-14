# Rails_BDD Demo

This Ruby on Rails "Article" application was modeled after a Craft Academy exercise aimed at focusing on Behavioral Driven Development (BDD). Additional features were added by following the Ruby on Rails "Getting Started" guide, found here: https://guides.rubyonrails.org/getting_started.html.

### Update @ 07/12/2019 - Weekend Challenge for Week 5
1. Read the Devise documentation: https://github.com/plataformatec/devise
2. Add a login functionality to the AUT challenge
3. Only allow logged in user to view articles
    *Feature test
    *Unit tests
4. Make a WIP PR towards your development branch
5. Submit PR before monday morning 


### Ruby version 2.6.3
Update from CA's exercise version, 2.3.4

### Usage
The following app has been deployed to Heroku.  It can be visited by following the link below:

Awesome Articles!
https://gorgeous-lassen-volcanic-60733.herokuapp.com/

### Testing
Awesome Articles were tested using Cucumber/Capybara.  To access the tests, run 'bundle exec cucumber' from the command prompt 
in the root folder, followed by the feature file you would like to test.  The test suite touts the following feature tests:

1. List Articles - Displays all articles @ Index
list_articles.feature
2. Create Article - Creates new articles
create_articles.feature
3. Edit Article - Edits current articles
edit_articles.feature
4. Delete Article - Deletes any current article w/ a prompt
delete_article.feature
5. Comment Articles - Readers can comment on articles
comment_article.feature

###Additional Resources
Accidentally added a bad migration, used the following link to revert:
https://gist.github.com/chand/3c646d7ef8f32599ea17ae37c6ebde86