# Forex Price Demo

Basic demo of a Ruby On Rails app that retrieves Forex data through an open third-party API.
Currently only retrieves USD to Euro.

Login page is a basic demo. It is not secure.

## Installation

1. Download and extract application.
2. Open command prompt and change the directory to the extraction path.
3. Due to database issues you will need to run "rake db:migrate"
4. Create a user. Inside the rails console run 'User.create :username => "Webbernet" , :password => "Webbernet"'. Please be aware the details you enter here will be required later on the login page.
5. After exiting the rails console. Run the rails server by entering the command 'rails server'.
6. Use the same details that you used in the User.create command to login to application.

