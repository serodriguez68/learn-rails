# Le dice a bundler que utilice rubygems.org como la fuente de gems
source 'https://rubygems.org'

# Se adiciona que versión de ruby se usa para indicar a los scripts de Heroku como proceder
ruby '2.2.0'
gem 'rails', '4.2.0'


# Rails defaults
# --------------------
# gem 'sqlite3' ==> Heroku no soporta sqlite3, se mueve al grupo de development
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Learn Rails
# --------------------
gem 'foundation-rails'
gem 'gibbon'
gem 'google_drive'
gem 'high_voltage'
gem 'simple_form'

group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'sqlite3'

end

group :production do
  # PostGres -  un motor de base de datos que soporta Heroku.  En este caso
  # se instala para tener una configuración adecuada pero no se usa
  gem 'pg'

  # Handle logging and serve CSS and JS assets
  gem 'rails_12factor'

  # Simple server
  gem 'thin'
end
