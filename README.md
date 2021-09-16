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

## Generate Model - `Document`

- `rails generate model Document title:string content:text`
- `bin/rails db:migrate`
