module LegendasTV
  class Subtitle
    ORIGINAL_TITLE = 0
    TITLE = 1
    RELEASE = 2
    CD_COUNT = 3
    FPS = 4
    MOVIE_SIZE = 5
    DOWNLOAD_COUNT = 6
    FLAG_IMAGE = 7
    ADD_AT = 8
    
    def self.generate_from_nokogiri document
      attributes = split_base_information document["onmouseover"]
      document.css("span img").each do |image|
        attributes.merge! subtitle_image: "#{LegendasTV::BASE_URL}/#{image["src"]}"
      end
      document.css("div img").each do |team|
        attributes.merge! team_image: "#{LegendasTV::BASE_URL}/#{team["src"]}", team_name: team['alt']
      end
      attributes
    end
    
    
    protected
    def self.split_base_information document
      content = document.split("gpop(")[1].split(",")
      {original_title: content[ORIGINAL_TITLE].clean_quotes, title: content[TITLE].clean_quotes, release: content[RELEASE].clean_quotes,
        download_count: content[DOWNLOAD_COUNT].clean_quotes, add_at: content[ADD_AT].gsub(")", "").clean_quotes}
    end
  end
end