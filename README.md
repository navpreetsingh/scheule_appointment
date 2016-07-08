# schedule_appointment

## Requirements

* [rvm](https://rvm.io/)
* [PostgreSQL](https://www.postgresql.org/download/linux/ubuntu/)

## Install
Specify the gemset and version in gemset and version file

```sh
$ git clone git@github.com:navpreetsingh/scheule_appointment.git
$ touch .ruby-gemset
$ touch .ruby-version
$ bundle install
$ rake db:create && rake db:migrate && rake db:dictionary && rake db:products
$ rails server
```

Visit ***http://localhost:3000/*** on browser

## Way of working
Radio buttons on top of input box indicate 3 different functionality
  1. Left most radio button goes for normal functionality (Simple talking with booking appointments or telling a joke)
  2. Middle radion button goes for telling meaning of the word from dictionary
  3. Right most radio button goes for telling products on different online channels.
