role :app, %w{deploy@example.com}
role :web, %w{deploy@example.com}

#If AWS auto discover feature is used capistrano still will deploy to defined servers. 
#If you dont want ot deploy to them comment server definition.
server 'example.com', user: 'deploy', roles: %w{web app}

#Uncomment if you want to use AWS auto discover feature
#autoscale "autoscale_group_name"