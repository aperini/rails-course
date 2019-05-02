# rails-course

#### Sublime plugins
https://mattbrictson.com/sublime-text-3-recommendations

https://industrialagency.ca/blog/rapid-rails-development-in-sublime-text

#### Ruby on Rails 4: Getting Started:
https://app.pluralsight.com/library/courses/ruby-rails-4-getting-started/table-of-contents

#### Useful commands
rails -v

rails new QA (new rails project)

rails server / rails s (starts server)

http://localhost:3000/

rails generate controller home index

http://localhost:3000/about

rails generate resource question email:string body:text (full stack question)

rake db:migrate

rails console (cli tool with full access to app objects)

rake routes (show app defined routes)

#### Mailer

rails generate mailer main_mailer notify_question_author

#### To run in production mode

rake db:migrate RAILS_ENV=production

set RAILS_SERVE_STATIC_FILES=true (to include jquery)

set RAILS_ENV=production (this will indicate to minify js and css)

rake assets:precompile (this combines all js and css into one file each)

rails server -e production
