class ContactRequestMailer < ApplicationMailer
  def info_request(args)
    @user_email = args[:user_email]
    @body_lines = args[:body_lines]
    mail(
      to: "lukert33@gmail.com",
      subject: args[:subject]
    )
  end
end
