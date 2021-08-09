Dotenv.load('../../.env')

class ApplicationMailer < ActionMailer::Base
  default from: 'pierre.noppe@essec.edu'
  layout 'mailer'
end
