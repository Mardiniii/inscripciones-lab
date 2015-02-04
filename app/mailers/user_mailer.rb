class UserMailer < ApplicationMailer
	def welcome_email(user)
    @user = user
    @url  = 'http://eventoslab.com'
    mail(to: @user.email, subject: 'Inscripciones - LAB. Bienvenido al sistema de inscripciones de la Liga Antioqueña de Baloncesto')
	end

	def welcome_club_email(club)
		@user = club.user
		@club = club
		mail(to: [@user.email,"inscripcioneseventoslab@gmail.com"], subject: 'Inscripciones - LAB. Bienvenido haz registrado un nuevo Club')
	end

	def new_inscription_email(inscription)
		@inscription = inscription
		@club = inscription.club
		@user = @club.user
		@registers = inscription.registers
		mail(to: [@user.email,"inscripcioneseventoslab@gmail.com"], subject: 'Inscripciones - LAB. Haz realizado una nueva inscripción')
	end
end