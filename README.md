## README

#### Ruby version
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin14]

#### System dependencies
* postgresql - you can use the [app](http://postgresapp.com/) if you are running this in MacOS. Else download from [here](https://www.postgresql.org/download/)
* rails - [this](http://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm) includes steps to install ruby as well.
* [ruby](https://www.ruby-lang.org/en/documentation/installation/) - if for some reason you only need ruby (??)

#### Setup
1. Clone this repo to your local
* Make sure you have postgresql, ruby and rails installed
* Ensure postgresql is running
* Navigate to within the folder and run `$ bundle install`
* Initialize the db by running the below
  <br>
  `$ rake db:create`
  <br>
  `$ rake db:migrate`
* Run `$ rails s`

You should see the webpage on localhost:3000

#### Adding an admin
1. To use the admin side of the webpage, you would have to add yourself as an admin
* Run `rails c`
* To add a user, (with email *admin* , password *admin123* name *adminname* ) run the below
`User.create(:name => 'adminname', :password => 'admin123', :email => 'admin', :is_admin =>true)`
* Once this goes through, go to localhost:3000/login and login with email and password
* Once you login, you will see link to add, edit and delete articles.

#### Stack
* Built in Ruby
* Sass is used for styling
* postgresql DB (so that the app can be ported to heroku)
* Need to switch to react(??)
* Authentication using bcrypt

#### Link Dumps
* Simple rails tutorial - [create a todo list](http://masteruby.github.io/weekly-rails/2014/03/22/how-to-create-todo-list-app-static-pages.html#.V6OsJNArJE7)
* Using rails console - [Link](http://www.giantflyingsaucer.com/blog/?p=1891)
* Authentication with bcrypt - [Link](https://gist.github.com/thebucknerlife/10090014)
* [DEBUGGING] - if gem install fails to onstall pg gem - [Link](http://stackoverflow.com/questions/19262312/installing-pg-gem-on-os-x-failure-to-build-native-extension)
