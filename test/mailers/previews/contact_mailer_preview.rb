# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactRequestMailerPreview < ActionMailer::Preview
  def info_request_preview
    user_email = "soandso@preview.com"
    body_lines = {:request_time=>"Sunday, 09 Apr 2017  3:45 PM", :name=>"Luke", :phone=>"4136272883", :comments=>"Hello I'd like to learn about your offering. Please call me at the number above.", :email=>"luke.thomas@atlasobscura.com"}
    ContactRequestMailer.info_request(
      body_lines: body_lines,
      to: 'lukert33@gmail.com',
      subject: "Lead Testing Contact Request from #{user_email}",
      user_email: user_email
    )
  end
end
