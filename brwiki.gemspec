Gem::Specification.new do |s|
  s.name        = 'brwiki'
  s.version     = '0.1.1'
  s.licenses    = ['MIT']
  s.summary     = "wikipedia"
  s.description = "obtenha paginas do wikipedia direto em seu terminal"
  s.authors     = ["Luiz"]
  s.email       = 'luizfelip079@outlook.com'
  s.files       = ["lib/brwiki.rb"]
  s.homepage    = 'https://rubygems.org/gems/brwiki'
  s.metadata    = { "source_code_uri" => "https://github.com/Luizin5/brwiki" }
  s.add_runtime_dependency "nokogiri"
  [">= 0"]
  s.add_runtime_dependency "httparty"
  [">= 0"]
  s.add_development_dependency "nokogiri",
  [">= 0"]
  s.add_development_dependency "httparty",
  [">= 0"]
end
