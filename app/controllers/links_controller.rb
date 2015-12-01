require 'pry'

class LinksController < ApplicationController
    
  def index
    @links = Scraper.new.get_wiki_links(params['name'])
    render "welcome/welcome_page", locals: {:links => @links}
  end

  def wiki_pages
    @wikis = WikipediaPage.new.generate_wiki_links_path
    Scraper.clear
    render "welcome/welcome_page", locals: {:wikis => @wikis}
  end
    
  # def show 
  #   link = WikipediaPage.new.generate_wiki_show_link(params['name'])
  #   redirect_to link
  # end
end

