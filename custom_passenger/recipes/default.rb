
git node[:custompassenger][:clonelocation] do
  repository node[:custompassenger][:repourl]
  revision "master"
  action :checkout
end

include_recipe "nginx_passenger"


nginx_passenger_site node[:custompassenger][:appname] do
  action :create
  dir    node[:custompassenger][:clonelocation]
  server "localhost"
  rails_env "production"
end
