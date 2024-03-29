# -*- encoding: utf-8 -*-
# stub: factory_girl 3.6.2 ruby lib

Gem::Specification.new do |s|
  s.name = "factory_girl".freeze
  s.version = "3.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Josh Clayton".freeze, "Joe Ferris".freeze]
  s.date = "2012-10-24"
  s.description = "factory_girl provides a framework and DSL for defining and\n                      using factories - less error-prone, more explicit, and\n                      all-around easier to work with than fixtures.".freeze
  s.email = ["jclayton@thoughtbot.com".freeze, "jferris@thoughtbot.com".freeze]
  s.homepage = "https://github.com/thoughtbot/factory_girl".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "factory_girl provides a framework and DSL for defining and using model instance factories.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<cucumber>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_development_dependency(%q<bourne>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, ["~> 0.4"])
      s.add_development_dependency(%q<sqlite3-ruby>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.0"])
      s.add_dependency(%q<cucumber>.freeze, ["~> 1.1"])
      s.add_dependency(%q<timecop>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_dependency(%q<bourne>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, ["~> 0.4"])
      s.add_dependency(%q<sqlite3-ruby>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.0"])
    s.add_dependency(%q<cucumber>.freeze, ["~> 1.1"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<aruba>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<bourne>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 0.4"])
    s.add_dependency(%q<sqlite3-ruby>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
  end
end
