# -*- encoding: utf-8 -*-
# stub: liquid 5.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "liquid".freeze
  s.version = "5.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.7".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tobias L\u00FCtke".freeze]
  s.date = "1980-01-02"
  s.email = ["tobi@leetsoft.com".freeze]
  s.extra_rdoc_files = ["History.md".freeze, "README.md".freeze]
  s.files = ["History.md".freeze, "README.md".freeze]
  s.homepage = "https://shopify.github.io/liquid/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.4.20".freeze
  s.summary = "A secure, non-evaling end user template engine with aesthetic markup.".freeze

  s.installed_by_version = "3.4.20" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<strscan>.freeze, [">= 3.1.1"])
  s.add_runtime_dependency(%q<bigdecimal>.freeze, [">= 0"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
  s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
end
