set :application, 'my_app_name'

set :deploy_to, '/var/www/my_app_name'

set :scm, :rsync
set :archive_cache, true

#Uncomment if you want to use AWS auto discover feature
#set :aws_region, ''
#set :aws_id, ''
#set :aws_secret, ''

set :exclude, [
  '.idea',
  '.git'
  'node_modules'
]

set :log_level, :info
set :linked_files, fetch(:linked_files, []).push('app/config/parameters.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('app/logs')
set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
