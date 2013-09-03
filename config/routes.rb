AnesthesiaCases::Application.routes.draw do
  resource  :cases,         :only => :show
  resources :comorbidities, :except => :show

  root 'cases#show'
end
