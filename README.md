# README - Lunch Group Application

## Setup

* Ruby v2.6.3
* `gem install bundler`
* cd to project root and run `bundle install`
* Ruby on Rails migrations

```
bundle exec rails db:migrate

bundle exec rails db:fixtures:load
```

* Run server `bundle exec rails server`
* Open url in web browser `http://localhost:3000`

## Feature implementation

* The application consists for 3 data models
* Employee data model to register name to provide availability for lunch
* Event data model to RSVP for lunch, validations do not allow duplicate entries
  for an employee. An employee can edit their existing entry.
* Group data model that is responsible for creating a randomized groups of
  members opted in for lunch

## Limitations

* Front-end pages require some work. It includes minimal navigations between the
  necessary pages
* The application allows creation of Employee record
* The employee can then RSVP for lunch, current implementation requires employee id
* The groups page allows creation of randomized groups based on employees to
  have opted in for lunch. Group creation is a single button that randomizes the
  group and it's members
* A leader is chosen during this randomization

## Improvements

* Separate logins and creation of event, the application shows all employees
  list and event list. This can be avoided by providing a more streamlined UX
* The user can opt-in and view their assigned group
* Automation of group creation based on entries
* More control over selecting leaders, existing employees who aren't new
* Creation of groups at an interval of time

## Tests

`bundle exec rails test test/controllers/groups_controller_test.rb`
