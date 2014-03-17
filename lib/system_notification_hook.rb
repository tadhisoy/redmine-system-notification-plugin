class SystemNotificationHookListener < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context)
      stylesheet_link_tag 'system_notification', :plugin => :system_notification
  end
end
