require 'pry'

class LinksController < ApplicationController
    
  def index
    @links = Scraper.new.get_wiki_links(params['name'])
    render "welcome/welcome_page", locals: {:links => @links}
  end
end

