# Oath::Generators

Rails generators for adding in authentication components, using the
[Oath](https://github.com/halogenandtoast/oath) authentication library.

## Installation

Add this line to your application's Gemfile:

    gem 'oath-generators'

And then execute:

    $ bundle

## Generators

Currently these are the generators available:

### Scaffold

You can generate a basic starting point for any oath app by running the following:

    rails g oath:scaffold

### Password Reset

If you'd like to generate basic password reset for your app, you can run:

    rails g oath:password_reset

This will generate the necessary files for an implementation of resetting
a user's password. It will ask you for host names for development, test
and production environments in order to make the mailer work.

### Google Oauth 2

If you'd like setup basic google oauth authentication, you can run:

    rails g oath:google_oauth2

This will generate the necessary files for an implementation of allowing users
to sign in either with an email/password or by using google oauth2.

## Contributing

1. [Fork it](http://github.com/halogenandtoast/oath-generators/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
