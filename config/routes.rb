Rails.application.routes.draw do
  get '/' => 'welcome#index'
  get '/final_wiki' => 'links#wiki_pages'
  get 'welcome/about' => 'welcome/about'
  resources :links
end



       