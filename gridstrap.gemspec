Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "1.2.0"
  s.date = "2015-07-20"

  # Gem Details
  s.name = "gridstrap"
  s.authors = ["Doug Wollison"]
  s.summary = %q{A bootstrap inspired grid system kit for Compass.}
  s.description = %q{A bootstrap inspired grid system kit for Compass.}
  s.email = "doug@wollison.net"
  s.homepage = "http://github.com/dougwollison/gridstrap"
  s.license = "GPL-2.0"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("sass", [">= 3.4.0"])
  s.add_dependency("compass", [">= 0.11"])
  s.add_dependency("handysass", [">= 0.1.0"])
end
