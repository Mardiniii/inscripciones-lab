class ApplicationMailer < ActionMailer::Base
  default 'Content-Transfer-Encoding' => '7bit',
  				from: "inscripcioneseventoslab@gmail.com"
  layout 'mailer'
end
