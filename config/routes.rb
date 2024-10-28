Rails.application.routes.draw do
  resources :departamentos
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  get "produtos", to: "produtos#index"
  root to: "produtos#index"
end
