Oncall::Application.routes.draw do
  resources :availabilities

  resources :offices
  resources :groups 
  resources :people
end
