Rails.application.routes.draw do

  resources :students
  resources :employees
 
  root 'students#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
