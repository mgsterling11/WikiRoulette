require 'mechanize'
require 'pry'


class Scraper

@@all = []

  def mechanize_agent
    Mechanize.new
  end

  def store_link(link)
    @@all << link
  end

  def get_wiki_links(link)
    store_link(link) 
    wiki_page = mechanize_agent.get("https://en.wikipedia.org" + link)
    wiki_page.links_with(:href => /^\/wiki\/?/).map { |link| link.href }  
  end

  def get_homepage_links
    homepage = mechanize_agent.get("https://en.wikipedia.org/wiki/Main_Page")
    homepage.links_with(:href => /^\/wiki\/?/).map { |link| link.href }   
  end

  def self.all
    @@all
  end
end

