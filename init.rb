require 'redmine'

require_dependency 'system_notification_hook'

Redmine::Plugin.register :system_notification do
  name 'Redmine System Notification'
  author 'Eric Davis'
  description 'The System Notification plugin allows Administrators to send systemwide email notifications to specific users.'
  url 'https://projects.littlestreamsoftware.com/projects/redmine-notify'
  author_url 'http://www.littlestreamsoftware.com'

  version '0.2.1'

  requires_redmine :version_or_higher => '0.8.0'

  
  menu :account_menu, :system_notification, { :controller => 'system_notification', :action => 'index'}, :caption => :system_notification, :before => :logout, :if => Proc.new {User.current.logged?}
  menu :admin_menu, :system_notification, { :controller => 'system_notification', :action => 'index'}, :caption => :system_notification
end
