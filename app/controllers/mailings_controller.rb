class MailingsController < ApplicationController
	def contact_request
		request_time = "#{Time.now.strftime('%A, %d %b %Y %l:%M %p')}"

		elements = {request_time: request_time}
		["name", "phone", "email", "comments"].each do |info_type|
			if params[info_type]
				elements[info_type.to_sym] = params[info_type]
			end
		end
		print elements

		subject = "Lead Testing Contact Request from #{params['email']}"
		body_lines = elements
		mail_attrs = {
			body_lines: body_lines,
			to: "lukert33@gmail.com",
			subject: subject,
			user_email: params["email"]
		}

		ContactRequestMailer.info_request(mail_attrs).deliver

		respond_to do |format|
			format.js { render :layout => false }
		end
	end
end