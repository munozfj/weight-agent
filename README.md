# Weight Agent
- - -
Author: Fernando J. Muñoz

Descripción: esta página web tiene como único objetivo llevar un registro de la evolución del peso de una persona a lo largo del tiempo.

Características:

- Acceso a través de un usuario/password

- Perfil del usuario

- Registro del peso

- Graficos de seguimiento

- Notificaciones


Fecha inicio: 19/10/2014

- - -
#### Fecha: 19/10/2014

Objetivo: creacion de la aplicación y configuración inicial

- rails _4.2.0.beta2_ new weight-agent

- cd weight-agent

- mv README.rdoc README.md

- Gemfile inicial

> 
> source 'https://rubygems.org'
> 
> 
> ruby '2.1.2'
>
> 
> gem  'rails', '4.2.0.beta2'
> 
> gem  'sass-rails', '~> 5.0.0.beta1'
> 
> gem  'uglifier', '>= 1.3.0'
> 
> gem  'coffee-rails', '~> 4.0.0'
> 
>
> gem  'jquery-rails', '~> 4.0.0.beta2'
>
> gem  'turbolinks'
>
> gem  'jbuilder', '~> 2.0'
> 
>
> gem 'rails-html-sanitizer', '~> 1.0.1'
>
> gem 'bootstrap-sass'
>
> gem 'will_paginate'
>
> gem 'will_paginate-bootstrap'
>
> 
> group :development do
>
>   gem 'annotate', '~> 2.6.5'  #hay que instalarlo
>
>   gem 'better_errors', '~> 2.0.0'
>
>   gem 'binding_of_caller', '~> 0.7.2'
>
>   gem 'quiet_assets', '~> 1.0.3'  
>
>   gem 'rails_layout', '~> 1.0.23' 
>
> end
> 
>
> group :development, :test do
>
>   gem 'sqlite3'
>
>   gem 'byebug'
>
>   gem 'web-console', '~> 2.0.0.beta4'
>
>   gem 'spring'
>
> end
>
> 
> group :test do
>   gem 'minitest-reporters', '1.0.5'
>
>   gem 'mini_backtrace',     '0.1.3'
>
>   gem 'guard-minitest',     '2.3.1'
>
> end
>
> 
> group :production do
>
>   gem 'pg',             '0.17.1'
>
>   gem 'rails_12factor', '0.0.2'
>
> end
> 
>
> gem 'sdoc', '~> 0.4.0', group: :doc
>

- bundle install --without production

- instalar annotate con:

> annotate
>
> rails g annotate:install
>
> annotate --routes

- rails s


- - -
#### Fecha: 19/10/2014

Objetivo: Crear las paginas estáticas de la aplicación

- Modificar el layout de la aplicación para que use Bootstrap 3

> rails generate layout:install bootstrap3

- rails g controller Static home contact about help

- En /config/routes.rb definir root, como: root 'static#home'

- También en /config/routes.rb creamos las primeras named routes

> get '/contact', to: 'static_pages#contact', as: 'contact'
> 
> get 'about', to: 'static_pages#about', as: 'about'
> 
> get 'help', to: 'static_pages#help', as: 'help'

- annotate --routes

- annotate --routes

- rails s

- Crear en /views/ la subcarpeta shared y es ahi donde se colocaran los partials de los layouts

- Modificar en application.html.erb y _navigation.html.erb para que contentan la nueva ruta hacia los partials

- Agregar en _navigation_links.html.erb los links que faltan para las paginas estaticas creadas.

- rails s

- Se crearan en /views/shared los siguientes partials:

> _footer.html.erb
>
> _favicons.html.erb
>
> _metas.html.erb
>
> _shim.html.erb

- Se modificará el layout application.html.erb para que contenta los partials anteriores

- Se buscará un bootstrap theme para para aplicación  y el contenido del mismo se colocará en /app/assets/stylesheets/framewrok_and_overrides.css.scss

- En /app/assets/stylesheets se creará el archivo weight_agent.css.scss en el que se colocará:

> body
> 
> {
>
>  padding-top: 70px;
>
> }
>
> footer
>
> {
>
> text-align: center;
>
> }

- Ir a github y crear el repositorio

- Subir los cambios con:

> git init
>
> git add -A
>
> git commit -m "Commit inicial"
>
> git status
>
> git remote add origin git@github.com:munozfj/weight-agent.git
>
> git push -u origin master

- Para publicar en heroku hacer

> RAILS_ENV=production rake assets:precompile
>
> heroku create
>
> git push heroku master
>
> heroku config:set SECRET_KEY_BASE=`ruby -rsecurerandom -e "puts SecureRandom.hex(64)"`
> 
> heroku apps:rename weight-agent
> 
> heroku logs
>
> heroku open

- - -
#### Fecha: 20/10/2014

Objetivo: Hacer un lindo titulo para las páginas

-

