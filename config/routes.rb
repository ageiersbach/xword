Xword::Application.routes.draw do
  root :to => 'application#index' 
  
  #stretch goal: 
  #root :to => 'puzzles#new'
  resources :puzzles
  
  namespace :api, defaults: { format: :json } do
    resources :clues
    resources :words
  end
end
