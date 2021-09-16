# Notes

## Setup

- `rails generate controller welcome index`
- `bin/rails routes`

### Gemfile

```ruby
# HAML templating
gem 'haml', '~> 5.2', '>= 5.2.2'
# Device Authentication
gem 'devise', '~> 4.8'
# Simple Form
gem 'simple_form', '~> 5.1'
```

- `bundle install`
- restart rails server: `rails s`

## `Document` Entity

### Model

- `rails generate model Document title:string content:text`
- `bin/rails db:migrate`

### Controller and Views

- `rails generate controller Documents`
- add resources in `config/routes`

- `create` and `update` controller methods dont have a view per se
  - they are channeled through the `edit` view

### Install simple form

- `rails generate simple_form:install`

### Install devise

- `rails generate devise:install`
- `rails g devise:views`: generate _devise_ authentication views
- `rails db:migrate`
