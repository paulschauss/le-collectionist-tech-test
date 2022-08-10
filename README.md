# Technical Test for Le Collectionist

Let's code a Rails app that allows us to consult shops hours.

1. [Introduction](#1-introduction)
2. [Technical stack](#2-technical-stack)
3. [Setup](#3-setup)
4. [Spec](#4-spec)

## 1. Introduction

LC technical test app serves two mains goal :
  - Store the schedules of each shops.
  - View a shop's schedule.

## 2. Technical stack

LC technical test is developped using Ruby on Rails.

### Ruby version (3.1.2)

To install it with `rbenv` please run

```sh
$ rbenv install 3.1.2
```

### Rails version (7.0.3.1)

### Database : PostGreSQL

```sh
# MacOS
brew install postgresql
brew services start postgresql
```

You will find the schema [here](https://dbdiagram.io/d/62efd3adc2d9cf52fa5efba6).

### Javascript framework: [Stimulus](https://stimulusjs.org/)

## 3. Setup

### Clone the repository

```sh
git clone git@github.com:paulschauss/le-collectionist-technical-test.git
cd le-collectionist-technical-test
```

### Install dependencies using Bundler and Yarn:

```sh
bundle && yarn
```

### Initialize the database

```sh
rails db:create db:migrate db:seed
```

### Start rails server

```sh
rails server
```

## 4. Spec

We’re going to create an app to create shops associated to a scheduler, and destroy them.

- [ ] As a visitor, I can see all shops
- [ ] As a visitor, I can see a shop and consult his shop hours
- [ ] As a visitor, I can add a shop with shop hours

<!-- If you want to run test locally :

```sh
$ bundle exec rspec
``` -->
