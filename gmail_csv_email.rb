require 'gmail'
require 'csv'

p @gmail = Gmail.connect!('your email here', visit for pw: https://security.google.com/settings/security/apppasswords)

def send_email(name, email_address)
  p "sending email to #{email_address}"
  email = @gmail.compose do
    to "#{email_address}"
    bcc 'email here'
    subject "Chat with Runscope"
    text_part do

      "What should it say??"

    end
    html_part do
      content_type 'text/html; charset=UTF-8'
      body "NOW IN HTML"
    end
  end

  p "success!" if email.deliver! # or: gmail.deliver(email)
end

CSV.foreach("outreach_emails.csv", headers: true ) do |row|
  @client_name = row['First Name'] 
  @client_email = row['Email']
  @client_email

  send_email(@client_name, @client_email) if Date.parse(row['Date to Send']) == Date.today
end
p 'all done'
@gmail.logout
