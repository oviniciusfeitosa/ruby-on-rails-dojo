## StepByStep - new Projetct
- rauls new projeto
- cd projeto
- rails generate scaffold Custumers name:string date_of_brith:date cpf:string ammount_of_haircuts:integer
- rake -T
- rake db:create
- rake db:migrate
- rails serve ( ou rails s)
- rota criada : http://localhost:3000/custumers
- routes >> http://localhost:3000/rails/info/routes
- injetar a dependencia da lib de authentication no genfile(gerenciador de dependencia)
-  adicionar a gema 'devise' 
- bundle install
- rails generate devise User
- rake db:migrate
- rails generate controller Welcome index

-  'no routes.rb alterar de "/get rota" para "/root rota" para que por padrao caia no novo controller
-  alterar views/welcome/index.html.erb
    <ul>
        <% if user_signed_in? %>
            <li><% link_to(... sair) %>
        <% else %> 
            ...
        <% end %> 
    </ul> 
-  no controller no método 'before_action' adicionar método que a gema fornece para verificar se está autenticado. Caso não esteja, redirecionar para tela de login

## deploy
-  heroku create barbearia
-  heroku run rake db migrate
- dashboard.heroku.com
-  https://barbeariadozecopacabana.herokuapp.com/
-  adicionar a gema 'rails_admin'
-  bundle install
-  rails g rails_amin:install
-  'rails_admin.rb' e adicionar o codigo abaixo
``
config.authenticate_with do
    warden.authenticate! scope: :user
  end

  config.current_user_method(&:current_user)
``

## API - Para criar API

-  rails new my_api --api
 
- Referências : https://www.linkedin.com/pulse/top-15-sites-built-ruby-rails-dan-siepen-2