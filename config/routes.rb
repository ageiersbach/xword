Xword::Application.routes.draw do
  root :to => 'puzzles#new'
  resources :puzzles
  resources :clues
  resources :words
  
end
