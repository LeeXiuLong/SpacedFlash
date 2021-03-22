Rails.application.routes.draw do

  root to: 'static_pages#root'

  #methods for both getting a random flashcard and updating the box on a flashcard
  namespace :api, defaults: {format: :json} do
    resources :flashcards, only: [:show]
    resources :flashcards, only: [:update]
  end
end
