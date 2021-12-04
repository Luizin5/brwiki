require '../lib/brwiki.rb'

wiki = Brwiki.new

wiki.setlang("pt")

wiki.setpage("pizza")


puts wiki.gettitle

puts wiki.getdescription(2)

puts wiki.getlinks(1)

fonte = wiki.geturl

puts("red","Fonte: #{fonte}")
