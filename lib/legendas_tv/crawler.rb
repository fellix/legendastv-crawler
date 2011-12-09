require 'nokogiri'
require 'open-uri'

module LegendasTV
  class Crawler
    class << self
      
      def document
        Nokogiri::HTML(open("#{LegendasTV::BASE_URL}"))
      end
      
      def most_downloaded
        subtitles = []
        document.css("td#conteudodest div#maisbaixados div[onmouseover]").each do |subtitle_content|
          subtitles << LegendasTV::Subtitle.generate_from_nokogiri(subtitle_content)
        end
        subtitles
      end
      
      def highlights
        subtitles = []
        document.css("td#conteudodest div[style] div.Ldestaque[onmouseover]").each_with_index do |subtitle_content, i|
          #We need to ignore the first 20, because this is the most_downloaded subtitles
          next if i < 20
          subtitles << LegendasTV::Subtitle.generate_from_nokogiri(subtitle_content)
        end
        subtitles
      end
      
    end
  end
end