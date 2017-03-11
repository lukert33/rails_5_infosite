class MailingsController < ApplicationController
	def contact_request
		message_em = "#{params['email']} just asked to be contacted from the lead site at #{Time.now.strftime('%A, %d %b %Y %l:%M %p')}"

		body_lines = ["name", "phone", "comments"].map do |info_type|
			if params[info_type]
				"They provided the #{info_type}: #{params[info_type]}"
			else 
				""
			end
		end

		body = [message_em, body_lines].flatten.join("\n\n")

		mail = Mail.new

		mail.from = "contact@leadpipetesting.com"
		mail.to = 'lukert33@gmail.com'

		mail.subject = "Lead Testing Contact Request from #{params['email']}"
		mail.body = body

		sg = SendGrid::API.new(api_key: ENV['sendgrid_key'])
		begin
			pp mail.to_json
	    response = sg.client.mail._("send").post(request_body: mail.to_json)
		rescue Exception => e
	    puts e.message
		end

		respond_to do |format|
			format.js { render :layout => false }
		end
	end
end