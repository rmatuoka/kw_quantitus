class Notifier < ActionMailer::Base
  helper :application
  default :from => "QuantiTTus <log@korewa.com.br>"

  def send_contact_adm(sitecontact)
    @sitecontact = sitecontact
    
    mail(:to => "contato@quantittus.com.br", :bcc => "log@korewa.com.br", :subject => "Novo contato pelo site - Protocolo #{@sitecontact.id}") 
  end
  
end
