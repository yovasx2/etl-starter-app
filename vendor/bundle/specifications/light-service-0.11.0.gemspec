# -*- encoding: utf-8 -*-
# stub: light-service 0.11.0 ruby lib

Gem::Specification.new do |s|
  s.name = "light-service".freeze
  s.version = "0.11.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Attila Domokos".freeze]
  s.date = "2018-05-22"
  s.description = "A service skeleton with an emphasis on simplicity".freeze
  s.email = ["adomokos@gmail.com".freeze]
  s.homepage = "https://github.com/adomokos/light-service".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "A service skeleton with an emphasis on simplicity".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.53"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.10"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.53"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.53"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
  end
end
