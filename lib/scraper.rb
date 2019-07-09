require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = File.read(index_url)
    flatiron = Nokogiri::HTML(html)
    binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

# name: flatiron.css("h4.student-name").text

