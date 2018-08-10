# Forex Price Demo

Basic demo of a Ruby On Rails app that retrieves Forex data through an open third-party API.
Currently only retrieves USD to Euro.

Login page is a basic demo. It is not secure.

## NOTE: There could be issues with migrating the database. Please see below.

Before using the app you will need to run:

Ensure you are inside the applications folder.

rake db:migrate

You will also need to create a user.

Inside the rails console run:

User.create :username => "AnyUserName" , :password => "AnyPassword"

After that everything should work fine.