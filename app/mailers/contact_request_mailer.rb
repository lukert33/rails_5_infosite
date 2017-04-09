class ContactRequestMailer < ApplicationMailer
  default to: "info@leadpipetesting.com"
  def info_request(args)
    @user_email = args[:user_email]
    @body_lines = args[:body_lines]
    mail(
      from: @user_email,
      subject: args[:subject]
    )
  end
end
