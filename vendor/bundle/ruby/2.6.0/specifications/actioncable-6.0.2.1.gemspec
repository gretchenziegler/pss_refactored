# -*- encoding: utf-8 -*-
# stub: actioncable 6.0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "actioncable".freeze
  s.version = "6.0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/rails/rails/issues", "changelog_uri" => "https://github.com/rails/rails/blob/v6.0.2.1/actioncable/CHANGELOG.md", "documentation_uri" => "https://api.rubyonrails.org/v6.0.2.1/", "mailing_list_uri" => "https://groups.google.com/forum/#!forum/rubyonrails-talk", "source_code_uri" => "https://github.com/rails/rails/tree/v6.0.2.1/actioncable" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pratik Naik".freeze, "David Heinemeier Hansson".freeze]
  s.date = "2019-12-18"
  s.description = "Structure many real-time application concerns into channels over a single WebSocket connection.".freeze
  s.email = ["pratiknaik@gmail.com".freeze, "david@loudthinking.com".freeze]
  s.homepage = "https://rubyonrails.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.0.8".freeze
  s.summary = "WebSocket framework for Rails.".freeze

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>.freeze, ["= 6.0.2.1"])
      s.add_runtime_dependency(%q<nio4r>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<websocket-driver>.freeze, [">= 0.6.1"])
    else
      s.add_dependency(%q<actionpack>.freeze, ["= 6.0.2.1"])
      s.add_dependency(%q<nio4r>.freeze, ["~> 2.0"])
      s.add_dependency(%q<websocket-driver>.freeze, [">= 0.6.1"])
    end
  else
    s.add_dependency(%q<actionpack>.freeze, ["= 6.0.2.1"])
    s.add_dependency(%q<nio4r>.freeze, ["~> 2.0"])
    s.add_dependency(%q<websocket-driver>.freeze, [">= 0.6.1"])
  end
end