$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "thecore_datawedge_websocket_helpers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "thecore_datawedge_websocket_helpers"
  s.version     = ThecoreDatawedgeWebsocketHelpers::VERSION
  s.authors     = ["Gabriele Tassoni"]
  s.email       = ["gabriele.tassoni@gmail.com"]
  s.homepage    = "https://www.taris.it"
  s.summary     = "Some javascripts and partials to handle DW WS."
  s.description = "This plugin adds some partials to deal with DataWedge WebSocket."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "thecore_settings", "~> 1.1"
  s.add_dependency "browser", "~> 2.5"
end
