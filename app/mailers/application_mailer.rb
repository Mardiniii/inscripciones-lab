class ApplicationMailer < ActionMailer::Base
  default 'Content-Transfer-Encoding' => '7bit',
  				from: "Liga Antioqueña de Baloncesto"
  layout 'mailer'
end
