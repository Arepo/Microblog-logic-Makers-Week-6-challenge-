Microblog
=========

This was a challenge to create something with (very) basic Twitterlike functionality. 

I took the challenge spec rather literally, so it's in plain text and doesn't do anything beyond the given specs (such as allow deletions):

> **Features:**

> * In order to use chitter as a maker I want to sign up to the service
> * In order to user chitter as a maker I want to log in
> * In order to avoid others to use my account as a maker I want to log out
> * In order to let people know what I am doing as a maker I want to post a message to chitter
> * In order to see what people have to say as a maker I want to see all peeps in chronological order

> **Notes:**

> * Makers sign up to chitter with their email, password, name and a user name (i.e. stephen@makersacademy.com, s3cr3t, Stephen Lloyd, Stephen_lloyd)
> * The username and email are unique
> * Peeps (posts to chitter) have the name of the maker and their user handle
> * Use bcrypt to secure the passwords
> * Use data mapper and postgres to save the data
> * You don't have to be logged in to see the peeps
> * You only can peep if you are logged in.
