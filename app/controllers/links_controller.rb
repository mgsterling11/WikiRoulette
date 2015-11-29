require 'pry'

class LinksController < ApplicationController
    
  def index
    @links = Scraper.new.get_wiki_links(params['name'])
    render "welcome/welcome_page", locals: {:links => @links}
  end

  def show
    link = WikipediaPage.new.generate_wiki_show_link
    redirect_to link
  end
end

