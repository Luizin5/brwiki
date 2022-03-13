# Brwiki

Brwiki é uma lib feita para a linguagem de programação ruby.

O seu único objetivo é pegar o título e o primeiro parágrafo de uma pagina do Wikipedia.


# Como usar/exemplos


É muito fácil usar o brwiki, você precisará de:

1 • Nokogiri (gem install nokogiri -- --use-system-libraries)

2 • httparty (gem install httparty)

3 • brwiki (para usar o brwiki você precisa do brwiki, gem install brwiki)

4 • o mínimo de conhecimento sobre ruby (é sempre bom saber o que você está fazendo!)


Primeiro você terá que colocar 
```ruby
require 'brwiki

wiki = Brwiki.new
```
agora para obter o resultado:

```ruby
wiki.setlang("idioma") #pt, en
wiki.setpage("sua pesquisa")

puts wiki.gettitle #imprime no console o título da pesquisa

puts wiki.getdescription(paragrafo) #imprime no console o primeiro parágrafo da sua pesquisa

puts wiki.geturl #imprime a fonte do texto no console
```
Nosso código ficou assim:

```ruby
require 'brwiki'

wiki = Brwiki.new

wiki.setlang("pt")

wiki.setpage("carros")

puts wiki.gettitle
puts wiki.getdescription(2) #segundo paragrafo
puts wiki.getlinks(2) #imprime o segundo link
puts wiki.geturl
```

obs:

o getdescription precisa do numero do paragrafo.

ex:

wiki.getdescription(2) -> retorna o segundo paragrafo

wiki.getdescriptipn("all") -> retorna todos os paragrafos

mesma coisa para o comando wiki.getlinks

Viu só? É muito facil usar o brwiki!

**Feel free to translate the docs for your language**

