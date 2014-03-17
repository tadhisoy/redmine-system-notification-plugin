#    ActionController::Routing::Routes.draw do |map|
#        match '/system_notification/index', :controller => 'system_notification', :action => 'index'
#        #map.connect('/system_notification/create', :controller => 'system_notification', :action => 'creat')
#        #map.connect('/system_notification/users_since', :controller => 'system_notification', :action => 'users_since')
#    end
#
RedmineApp::Application.routes.draw do
#  match 'projects/:id/wiki_extensions/:action', :controller => 'wiki_extensions', :via => [:get, :post]
#  match '/system_notification/index/:id', :controller => 'system_notification', :action => 'index', :via => [:get, :post]
#  match '/system_notification/index', :to => 'system_notification#index', :via => [:get, :post]
#get '/system_notification/index', :to => 'system_notification#index'
  match '/system_notification/index' => 'system_notification#index'
  match '/system_notification/create' => 'system_notification#create'
  match '/system_notification/users_since' => 'system_notification#users_since'
end
