require 'httparty'
require 'nokogiri'

class Brwiki

  extend HTTParty
  extend Nokogiri

  attr_reader :fonte
  attr_reader :site
  attr_reader :sitehtml
  attr_reader :lang
  

  def setpage(artigo)

    @lol = "https://#{@lang}.wikipedia.org"

    @fonte = "https://#{@lang}.m.wikipedia.org/wiki/#{artigo}"

    @site = HTTParty.get(@fonte)

    @sitehtml = Nokogiri::HTML(@site.response.body)

  end



  def setlang(idioma)
    @lang = idioma

    return "idioma selecionado #{idioma}"
  end



  def gettitle
    return @sitehtml.search("title").text
  end



  def getdescription(paragrafo)
    if paragrafo.eql?("all")
      return @sitehtml.search("p").text
    else
       p = @sitehtml.search("p")[paragrafo]
       return p.text
    end
  end



  def geturl
    fonte = @fonte
    return fonte
  end



  def getlinks(links)
    if links == "all"
      links = @sitehtml.search("a")
    else
      links = @sitehtml.search("a")[links]
    end
    return @lol + links.attr("href")
  end
end
