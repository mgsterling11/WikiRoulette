require 'mechanize'
require 'pry'


class Scraper

  def mechanize_agent
    Mechanize.new
  end

  # def parse_link(link)
  #   link.slice("https://en.wikipedia.org")
  # end

  def get_wiki_links(link)
    # mechanize_agent = Mechanize.new
    # binding.pry
    wiki_page = mechanize_agent.get("https://en.wikipedia.org" + link)
    wiki_page.links_with(:href => /^\/wiki\/?/).map { |link| link.href }   
  end

  def get_homepage_links
    # mechanize_agent = Mechanize.new
    homepage = mechanize_agent.get("https://en.wikipedia.org/wiki/Main_Page")
    homepage.links_with(:href => /^\/wiki\/?/).map { |link| link.href }   
  end
end

