class ContactsController < ApplicationController

  def new
    @contact = Contact.new

    # Rails magic para unir el modelo con el view (eso está escondido en el código de rails)
    # render 'contacts/new'
  end

  def create
    @contact = Contact.new(secure_params)

    # @contact.valid? chequea cada una de las validaciones que se colocaron en el modelo.
    if @contact.valid?
      # TODO save data
      # TODO send message
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      # Si hay algun error, se redirige a la acción new pero los errores apropiados
      # son creados en el objeto error_notification (SimpleForm hace esto.)
      render :new
    end
  end

  private

  def secure_params
    # :contact es el nombre que simple form le dio a la forma, que se traduce en un
    # hash, nesteado detro del hash de params.  De ese hash ':contact' permitimos los
    # keys ':name', ':email' y ':content' unicamente
    # Esto se conoce como strong parameters
    params.require(:contact).permit(:name, :email, :content)
  end

end
