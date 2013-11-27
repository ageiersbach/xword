Xword::Application.routes.draw do
  root :to => 'puzzles#index'
  resources :puzzles
  resources :clues
  resources :words
  
end
