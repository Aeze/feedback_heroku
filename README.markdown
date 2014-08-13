

To Deploy
===

Prerequisites: [Heroku Toolbelt](https://toolbelt.heroku.com/)

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


After you deploy you'll have to migrate the database, and you should be good to go!

`heroku run -a app-name rake db:migrate`

