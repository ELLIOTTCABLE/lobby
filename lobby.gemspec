# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lobby}
  s.version = "1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["elliottcable"]
  s.date = %q{2009-06-17}
  s.description = %q{Welcome to Ruby. Enjoy your stay. Here's a chair.}
  s.email = ["Lobby@elliottcable.com"]
  s.extra_rdoc_files = ["README.markdown", "lib/lobby.rb"]
  s.files = ["README.markdown", "Rakefile.rb", "lib/lobby.rb", "spec/lobby_spec.rb", ".manifest", "lobby.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/elliottcable/lobby}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Lobby", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{lobby}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Welcome to Ruby. Enjoy your stay. Here's a chair.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<echoe>, [">= 0", "= 3.0.2"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<echoe>, [">= 0", "= 3.0.2"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<echoe>, [">= 0", "= 3.0.2"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
