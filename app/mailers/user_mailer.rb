class UserMailer < ActionMailer::Base

    # Este es el default para todos los métodos de mail que no especifiquen de parte de quién
    # viene el mensaje
  default from: "do-not-reply@example.com"

  def contact_email(contact)
    @contact = contact

    # El from default se sobre-escribe acá con el mail de la persona que está contactantdp
    # mail envía el correo
    Rails.logger.debug "DEBUG: el correo que va al campo from es #{@contact.email}"
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
    # Rails magic: Action mailer tiene un class method mail que renderea el view

  end



end
