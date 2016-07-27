# ONGR Deploy gem for Symfony projects 

This is capistrano extension gem which adds additional features especially for Symfony projects like: deployment with rsync, missing parameters addition from `parameters.yml.dist`, automatical IP's resolving from AWS auto-scale groups.  

## Setup

For the setup we recommend to create a `Gemfile` in your project root. Check basic example below:
 
 ```
 #Gemfile content
 source 'http://rubygems.org'
 gem 'ongr_deploy'
 ```
 
 Once you have this file you can run `bundle install` to install all dependencies.
 
 > Make sure you have ruby v2+, and bundle gem installed.
 
 Next, generate all necessary files for your deploy, run:
 
 ```
 bundle exec ongr install
 ```
 
 It will generate: `Capfile`, `app/deploy.rb`, `app/deploy/stage.rb`, `app/tasks`
 
 ## Configuration
 After installation check `app/deploy.rb` and `app/deploy/stage.rb`. There are left comments where you need to change values according your project. 
 `app/deploy/stage.rb` is your first environment. Add additional files with env name if necessary.
  
  ## Deploy
  
  Deploy is 2 step process. Before release all files has to be packed and then deployed.
  
  To pack build run:
  
  ```
  bundle exec cap stage deploy:pack
  ```
  
  > `stage` is the environment name.
  
  And then deploy:
  
  ```
  bundle exec cap stage deploy
  ```
 
 
