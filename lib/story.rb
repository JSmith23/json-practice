require 'pry'

class Story
    attr_reader :section,
                :subsection,
                :title,
                :abstract,
                :url,
                :published_date,
                :photo

    def initialize(content)
      @section = content[:section]
      @subsection = content[:subsection]
      @title = content[:title]
      @abstract = content[:abstract]
      @url = content[:url]
      @published_date = content[:published_date]
      @photo = content[:photo]
    end

  def self.content_load
    file = File.read('./data/nytimes.json')
    response = JSON.parse(file, :symbolize_names => true)[:results]
    response.map do |data|
      if response[0][:multimedia][2][:format] == "Normal"
        {
        section: response[:section]
        subsection: response[:subsection]
        title: response[:title]
        abstract: response[:abstract]
        url: response[:url]
        published_date: response[:published_date]
        photo: response[:photo]
        }
      else
        {
        section: response[:section]
        subsection: response[:subsection]
        title: response[:title]
        abstract: response[:abstract]
        url: response[:url]
        published_date: response[:published_date]
        photo: "No Photo Available"
        }
      end
    end
  end
  
end




