Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'generate', to: "main#generate"
  post 'generate', to: "main#generate"
  root to: 'main#index'
end
