# McClane MiniHack

### A **Rails :heart:s Twilio** Template for Web Apps

This is a working Rails 4.2 template that you can use as a platform to build
applications using [Twilio's API via the Twilio gem][twilio_docs] with [Rspec
tests][rspec]. It includes:

- A working PostgreSQL database.
- Full, if minimal, "User CRUD" using BCrypt and sessions.
- The [Dotenv gem][dotenv_gem] to manage environmental variables.
- The [Twilio gem][twilio_gem] and a simple example of routes that use it.
- An example for testing Twilio integrations using the [SMS Spec gem][sms_gem].

## Getting Started

1. [Fork the project on GitHub][github_link].
1. Download the application and its gems, and set up the database.

  ```
  $ git clone git@github.com:<your_github_handle>/mcclane_minihack.git
  $ cd mcclane_minihack && bundle install
  $ rake db:create && rake db:migrate && rake db:seed
  ```

1. [Sign up for an "API key" from Twilio][twilio_sign_up].
1. [Add any number you wish to text or call from your Trial Account to the
   list of verified numbers][verify_numbers]; you'll need access to the phones
   to do this.
1. Add the "API key" information to your environmental variables:*

  ```
  $ cd <the_base_of_this_repo>
  $ touch .env
  $ echo "TWILIO_ACCT_SID=<your_twilio_account_sid>"  >> .env
  $ echo "TWILIO_AUTH_TOKEN=<your_twilio_auth_token>" >> .env
  $ echo "TWILIO_PHONE_NO=<your_twilio_phone_no>"     >> .env
  ```

1. Run your tests:

  ```
  $ bundle exec rspec
  ```

1. …, or run Rails!

  ```
  $ rails s
  ```

**Good luck!** For more examples of using the Twilio gem, [see their
GitHub page][twilio_examples].

---

_*_ — The "API key" is in fact two numbers: an Account SID and an Auth Token.
  These will be globally accessible to your app in the environmental 
  variables `TWILIO_ACCT_SID` and `TWILIO_AUTH_TOKEN`. Also available will
  be your `TWILIO_PHONE_NO`. Make sure that **the phone number is only 
  numbers**, without symbols or spaces, and has no leading _1_!

  Eg: `(440) 543-4041` is bad, but `4405434041` is good.

<!-- LINKS -->

[twilio_docs]:     http://twilio-ruby.readthedocs.org/en/latest/#rest-api
[rspec]:           http://rspec.info
[github_link]:     https://github.com/ga-instructors/mcclane_minihack#fork-destination-box
[dotenv_gem]:      https://github.com/bkeepers/dotenv
[twilio_gem]:      https://github.com/twilio/twilio-ruby
[sms_gem]:         https://github.com/mhs/sms-spec
[twilio_sign_up]:  https://www.twilio.com/try-twilio
[verify_numbers]:  https://www.twilio.com/user/account/phone-numbers/verified
[twilio_examples]: https://github.com/twilio/twilio-ruby/tree/master/examples
