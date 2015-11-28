class WelcomeController < ApplicationController
  def index
    
    @links = Scraper.new.get_homepage_links
    render 'welcome/welcome_page'
  end
end
