Rails.application.routes.draw do
  get '/' => 'welcome#index'
  get '/final_wiki' => 'links#show'
  resources :links
end



       