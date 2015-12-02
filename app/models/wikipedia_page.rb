class WikipediaPage

  def generate_wiki_links_path
    Scraper.all.map {|path| "https://en.wikipedia.org" + path }
  end  

end