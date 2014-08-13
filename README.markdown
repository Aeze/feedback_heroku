Feedback
====
Feedback is designed to be an easily deployable solution for conslidating user feedback as well as managing bug reports/support tickets. 

Features
===
- Easy deploy to Heroku
- User/admin authentication 
- Voting system for issues
- Comments on issues
- Moderation tools

To Deploy
===

Prerequisites: [Heroku Toolbelt](https://toolbelt.heroku.com/)

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


After you deploy you'll have to migrate the database:

`heroku run -a app_name rake db:migrate`

And then your should be up and running on Heroku. :)



