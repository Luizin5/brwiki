require "nokogiri"
require "open-uri"

module Brwiki

  def search lang, pesquisa
    page = Nokogiri::HTML URI::open("https://#{lang}.m.wikipedia.org/wiki/#{pesquisa}")
    [page.css("h1")[0].text,
     fisrt_paragraph(page.css("p").to_a)[0].text]
  end

  private
  def fisrt_paragraph x
    x.reject { |y| y.attr("class") == "mw-empty-elt" } 
  end

end

