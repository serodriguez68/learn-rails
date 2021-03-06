# la clase VisitorsController hereda el comportamiento de la clase ApplicationController de rails
# El controlador es quien entrega el response al browser, por lo tanto el controlador
# es quien une el view con el model.  No obstante esta unión ocurre tras
# bambalinas pues rails se encarga de hacer todo esto si se ha cumplido la convención
# de los nombres.

class VisitorsController < ApplicationController
    def new
        # Todas las instance variables están disponible en el view file correspondiente
        @visitor = Visitor.new

        # Así se colocan alertas en Rails
        # flash.now[:notice] = 'Welcome!'
        # flash.now[:alert] = 'My birthday is soon.'

        # Rails magic para unir el modelo con el view (eso está escondido en el código de rails)
        # render 'visitors/new'
    end

    def create
        @visitor = Visitor.new(secure_params)
        if @visitor.valid?
              @visitor.subscribe
              flash[:notice] = "Signed up #{@visitor.email}."
              redirect_to root_path
        else
            render :new
        end
    end

  private

  def secure_params
    params.require(:visitor).permit(:email)
  end




end
