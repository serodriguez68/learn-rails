Rails.application.routes.draw do

  # redirige cualquier call al root de la aplicación hacia /about.html que se
  # sobre entiende que está ubicado en el public folder (es la convención)
  # root to: redirect('/about.html')

  # Todos los requests al root se dirigen al VisitorsController y al new action
  root to: 'visitors#new'

end
