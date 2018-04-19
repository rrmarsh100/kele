Kele
A Ruby Gem API client to access the Bloc API; Bloc student project.

Rather than using cURL to access the Bloc Application API, you can use this gem to access student information in your own Rails application or API.

Installation
Add this line to your application's Gemfile:

```gem 'kele'```
And then execute:

```$ bundle```
Or install it yourself as:

```$ gem install kele```
Usage
Once installed, you can Initialize and authorize Kele wih a Bloc username and password using IRB.

You can find all of Bloc's documentation here: https://blocapi.docs.apiary.io/

```$ irb
>> require 'kele'
=> true
>> Kele.new("jane@gmail.com", "abc123")
```
Here are a few examples:

Retrieve the current user:

```$ irb
>> require 'kele'
=> true
>> kele_client = Kele.new("jane@gmail.com", "abc123")
>> kele_client.get_me
Retrieve a list of their mentor's availability:
```

```$ irb
>> require 'kele'
=> true
>> kele_client = Kele.new("jane@gmail.com", "abc123")
>> kele_client.get_mentor_availability
```

