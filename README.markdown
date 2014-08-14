Feedback
===
Feedback is designed to be an easily deployable solution for conslidating user feedback as well as managing bug reports/support tickets. You can easily deploy an instance of this application for each product you wish to manage at its own custom domain. 

Features
===
- Easy deploy to Heroku
- User/admin authentication 
- Fuzzy searching
- Voting system 
- Comments 
- Powerful moderation tools 

To Deploy
===

Prerequisites: [Heroku Toolbelt](https://toolbelt.heroku.com/)

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


After you deploy you'll have to migrate the database:

`heroku run -a app_name rake db:migrate`

And then your should be up and running on Heroku. :)


To Use
===
When you first go to your application's URL you'll be prompted to create an administrator account. You should do this immediately because there is only one administrator allowed at one time. You can then go to http://yourappurl.com/settings to modify global settings for the application.

At http://yourappurl.com/admin you can find a dashboard where you can modify users, issues, and other aspects of the site. 

At http://yourappurl.com/posts you can create news posts for version updates, general announcements, etc.


