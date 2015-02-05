class UserMailer < ApplicationMailer
	def welcome_email(user)
    @user = user
    @url  = 'http://eventoslab.com'
    mail(to: @user.email, subject: 'Bienvenido al sistema de inscripciones de la Liga Antioqueña de Baloncesto')
	end

	def welcome_club_email(club)
		@user = club.user
		@club = club
		@url  = 'http://eventoslab.com'
		mail(to: ["#{@user.email}","inscripcioneseventoslab@gmail.com"], subject: 'Haz registrado exitosamente un nuevo Club ')
	end

	def new_inscription_email(inscription)
		@inscription = inscription
		@club = inscription.club
		@user = @club.user
		@url  = 'http://eventoslab.com'
		@registers = inscription.registers
		mail(to: ["#{@user.email}","inscripcioneseventoslab@gmail.com"], subject: 'Haz realizado exitosamente una nueva inscripción')
	end
end