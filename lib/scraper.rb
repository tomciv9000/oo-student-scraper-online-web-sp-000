require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = File.read(index_url)
    doc = Nokogiri::HTML(html)
    students = []
    doc.css("div.roster-cards-container").each do |card|
      card.css(".student-card a").each do |student|
        name = student.css(".student-name").text
        location = student.css(".student-location").text
        profile_url = "#{student.attr("href")}"
        students << {name: name, location: location, profile_url: profile_url}
      end
    end
   students
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

# name: doc.css("h4.student-name").text
# location: doc.css("p.student-location").text
# profile_url: doc.css("div.roster-cards-container div.student-card a").attr("href").value
