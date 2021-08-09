class User < ApplicationRecord
  after_create :welcome_send

  def welcome_send
    puts "😄"*20
    puts self
    UserMailer.welcome_email(self).deliver_now
  end
end
