AnesthesiaCases::Application.routes.draw do
  resources :comorbidities

  root 'cases#show'
end
