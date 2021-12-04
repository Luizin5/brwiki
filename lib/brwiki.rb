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

    @site = HTTParty.get("https://#{@lang}.m.wikipedia.org/wiki/#{artigo}")

    @sitehtml = Nokogiri::HTML(@site.response.body)

  end



  def setlang(idioma)
    @lang = idioma

    return "idioma selecionado #{idioma}"
  end



  def gettitle
    sitehtml = Nokogiri::HTML(@site.response.body)

    seleciona_tag = @sitehtml.css("title")

    seleciona_tag = seleciona_tag.to_s

    titulo_sem_tags = seleciona_tag.text

    return titulo_sem_tags
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
