class SystemNotificationMailer < Mailer2

  def system_notification(system_notification)

    Rails.logger.info "deb: #{User.current.mail}"
    @body = system_notification.body
    mail(:to => system_notification.users.collect(&:mail), :subject => system_notification.subject, :from => User.current.mail) do |format|
#    mail(:to => system_notification.users.collect(&:mail), :subject => system_notification.subject) do |format|
      format.text { render layout: "system_notification.text" }
      format.html { render layout: "system_notification.html" }
    end
  end

end
