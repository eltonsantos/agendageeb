Rails.application.routes.draw do
  devise_for :users
  resources :members

  get 'about' => "pages#about"
  get 'geeb' => "pages#geeb"
  get 'faq' => "pages#faq"
  get 'team' => "pages#team"
  get 'terms' => "pages#terms"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#index"
end
