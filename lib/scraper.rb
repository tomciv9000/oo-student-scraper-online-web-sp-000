require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = File.read(index_url)
    flatiron = Nokogiri::HTML(open(html))
    binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

# name: flatiron.css("h4.student-name").text
# location: flatiron.css("p.student-location").text
# profile_url: flatiron.css("div.roster-cards-container div.student-card a").attr("href").value
