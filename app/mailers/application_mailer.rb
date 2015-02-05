class ApplicationMailer < ActionMailer::Base
  default 'Content-Transfer-Encoding' => '7bit',
  				from: "inscripciones@lab.com"
  layout 'mailer'
end
