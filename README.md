# Auction

My project to make auctions to sell stuff that I don't need anymore.

## Configuration

### Facebook

You have to create a Facebook app and set the enviroment variables
`ENV['FACEBOOK_KEY']` and `ENV['FACEBOOK_SECRET']`. On heroku:

``` bash
$ heroku config:set FACEBOOK_KEY=214157648678402
$ heroku config:set FACEBOOK_SECRET=bafd7eae0823fa769c65997e398e7731
```

### Admin area

You have to set the environment variable `ENV['ADMIN_PASSWORD']` to access the
admin area with the user "admin". On heroku:


``` bash
$ heroku config:set ADMIN_PASSWORD=R2XcH4PYkC
```