class WikipediaPage

  def generate_wiki_show_link
    "https://en.wikipedia.org" + Scraper.all.last
  end
  
end