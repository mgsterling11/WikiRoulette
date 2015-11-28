Rails.application.routes.draw do
  get '/' => 'welcome#index'
  resources :links
end



       