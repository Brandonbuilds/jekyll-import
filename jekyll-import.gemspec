Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  s.name              = 'jekyll-import'
  s.version           = '0.1.0'
  s.date              = '2013-02-23'
  s.rubyforge_project = 'jekyll-import'

  s.summary     = "Import command for Jekyll (static site generator)."
  s.description = "Provides the Import command for Jekyll."

  s.authors  = ["Tom Preston-Werner"]
  s.email    = 'tom@mojombo.com'
  s.homepage = 'http://github.com/mojombo/jekyll-import'

  s.require_paths = %w[lib]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_runtime_dependency('jekyll')
  
  # development dependencies
  s.add_development_dependency('rake', "~> 10.0.3")
  
  # test dependencies:
  s.add_development_dependency('redgreen', "~> 1.2")
  s.add_development_dependency('shoulda', "~> 3.3.2")
  s.add_development_dependency('rr', "~> 1.0")
  s.add_development_dependency('simplecov', "~> 0.7")
  s.add_development_dependency('simplecov-gem-adapter', "~> 1.0.1")

  # migrator dependencies:
  s.add_development_dependency('sequel', "~> 3.42")
  s.add_development_dependency('htmlentities', "~> 4.3")
  s.add_development_dependency('hpricot', "~> 0.8")
  s.add_development_dependency('mysql', "~> 2.8")
  s.add_development_dependency('pg', "~> 0.12")

  # = MANIFEST =
  s.files = %w[
    Gemfile
    README.md
    Rakefile
    jekyll-import.gemspec
    lib/jekyll-import.rb
    lib/jekyll/commands/import.rb
    lib/jekyll/importers/csv.rb
    lib/jekyll/importers/drupal6.rb
    lib/jekyll/importers/drupal7.rb
    lib/jekyll/importers/enki.rb
    lib/jekyll/importers/joomla.rb
    lib/jekyll/importers/marley.rb
    lib/jekyll/importers/mephisto.rb
    lib/jekyll/importers/mt.rb
    lib/jekyll/importers/posterous.rb
    lib/jekyll/importers/rss.rb
    lib/jekyll/importers/s9y_rss.rb
    lib/jekyll/importers/textpattern.rb
    lib/jekyll/importers/tumblr.rb
    lib/jekyll/importers/typo.rb
    lib/jekyll/importers/wordpress.rb
    lib/jekyll/importers/wordpressdotcom.rb
    test/helper.rb
    test/test_wordpress_migrator.rb
    test/test_wordpressdotcom_migrator.rb
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
