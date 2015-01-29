class UserMailer < ApplicationMailer
	def welcome_email(user)
    @user = user
    @url  = 'http://eventoslab.com'
    mail(to: @user.email, subject: 'Bienvenido al sistema de inscripciones de la Liga Antioqueña de Baloncesto')
	end
end
