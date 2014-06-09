Xword::Application.routes.draw do
  root :to => 'puzzles#new'
  resources :puzzles
  
  namespace :api, defaults: { format: :json } do
    resources :clues
    resources :words
  end
end
