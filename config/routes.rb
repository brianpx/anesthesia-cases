AnesthesiaCases::Application.routes.draw do
  resources :comorbidities, :except => :show

  root 'cases#show'
end
