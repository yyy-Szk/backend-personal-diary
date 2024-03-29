# -*- encoding: utf-8 -*-
# stub: factory_girl_rails 3.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "factory_girl_rails".freeze
  s.version = "3.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Joe Ferris".freeze]
  s.date = "2012-07-31"
  s.description = "factory_girl_rails provides integration between\n    factory_girl and rails 3 (currently just automatic factory definition\n    loading)".freeze
  s.email = "jferris@thoughtbot.com".freeze
  s.homepage = "http://github.com/thoughtbot/factory_girl_rails".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "factory_girl_rails provides integration between factory_girl and rails 3".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<factory_girl>.freeze, ["~> 3.6.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.6.0"])
      s.add_development_dependency(%q<cucumber>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, ["= 3.0.7"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<factory_girl>.freeze, ["~> 3.6.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.6.0"])
      s.add_dependency(%q<cucumber>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, ["= 3.0.7"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 3.6.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.6.0"])
    s.add_dependency(%q<cucumber>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<aruba>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, ["= 3.0.7"])
  end
end
