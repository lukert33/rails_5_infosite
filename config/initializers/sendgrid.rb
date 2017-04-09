# MySendGrid = SendGrid::API.new(api_key: ENV['sendgrid_key'])
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['sendgrid_name'],
  :password => ENV['sendgrid_password'],
  :domain => 'leadpipetesting.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}