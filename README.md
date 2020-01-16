rails g controller shops index new create destroy
rails g rspec:install
rails g devise:install
   rails g devise:views
   rails g devise user
   rails db:migrate
   
bundle exec guard init rspec
bundle exec spring binstub --all
bin/spring status

bundle exec spring rspec
