class UserMailer < ApplicationMailer

  # default from: 'jojo.justman@gmail.com'
  default from: 'pierre.noppe@essec.edu'
 
  def welcome_email(user)

    puts "🖕"*100
    puts ENV['SENDGRID_PWD']
    puts "🖕"*100

 
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 
    puts "💋"*20
    puts @user
    puts "💋"*20


    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
end

