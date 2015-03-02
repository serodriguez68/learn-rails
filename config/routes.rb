Rails.application.routes.draw do

  # redirige cualquier call al root de la aplicación hacia /about.html que se
  # sobre entiende que está ubicado en el public folder (es la convención)
  # root to: redirect('/about.html')

    # El kw resources crea los routes para las 7 acciones por default si se le pasa
    # el nombre de un modelo que tenga controlador.  En este caso, estamos limitando esa creación
    # de routes a :new y :create
    resources :contacts, only: [:new, :create]
    resources :visitors, only: [:new, :create]

  # Todos los requests al root se dirigen al VisitorsController y al new action
  root to: 'visitors#new'

  # Los routes de las páginas estáticas incluidas en app/views/pages están controlados
  # internatmente por el gem "high voltage"

end
