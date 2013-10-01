class SiteMailer < ActionMailer::Base
  # default from: "from@example.com"

  def contact_email(source, email, name, message)
    @message = message
    mail(
      :from => email,
      :to => ENV["SENDGRID_EMAIL"],
      :subject => "Contact from #{source}: #{name}"
    )
  end
end
