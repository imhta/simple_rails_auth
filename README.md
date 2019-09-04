# sample_rails_app
The projects will be less and less explicit about how to achieve their goals, since we expect you to build on your previous knowledge. If you don’t know how to do something, feel free to check back in previous lessons or projects or Google the correct way to implement it (though be careful, because that may take you deeper down the road than we intended). The Ruby on Rails Tutorial will be a good reference.

Up until now, we’ve been treating the “password” field of user submissions pretty cavalierly… it’s mostly been an afterthought included for the sake of completeness. We certainly haven’t been storing them properly or encrypting them, which we should. So wipe all that stuff from your memory because now you’ve got the tools to properly encrypt user passwords and we’ll be doing it from now on. Actually, you’ve had the tools since back when you did chapter 6 of the Ruby on Rails Tutorial.

## Prerequisite

- Ruby 2.6.3
- Rails 5.2.3

## Getting started


```
git clone https://github.com/imhta/simple_rails_auth.git
cd simple_rails_auth
```

To get started with the app, clone the repo and then install the needed gems:

```
bundle install --without production
```

Next, migrate the database:

```
rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
rails server
```

## Author
- [@abdusaid10](https://github.com/abdusaid10)
- [@imhta](https://github.com/imhta)
