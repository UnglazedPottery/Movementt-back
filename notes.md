-rails db:create , rails db:drop if you want to start over
-rails active_storage:install
-uncomment rack cors and bcrypt from gemfile
-go to config/initializers/cors and uncomment and replace example.com with *
-make models, migration tables
-rails db: migrate, rails db:seed
-make controllers and routes 
-rails s 

-byebug for debug help 
ps ax |  grep 3000
kill 2131 