
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


After you deploy you'll have to migrate the database and precompile assets

`heroku run -a app-name rake db:migrate`
`heroku run -a app-name rake assets:precompile`