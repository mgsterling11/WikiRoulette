Rails.application.routes.draw do
  get '/' => 'welcome#index'
  get '/final_wiki' => 'links#wiki_pages'
  get '/display_wiki' => 'links#show'
  resources :links
end



       