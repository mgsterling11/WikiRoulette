require 'pry'

class LinksController < ApplicationController
    

  def index
    @links = Scraper.new.get_wiki_links(params['name'])
    binding.pry
    render json: {links: @links}
  end

end
