source 'https://rubygems.org'

# Specify your gem's dependencies in adorner.gemspec
gemspec

gem "rails", "4.2.4"

platforms :jruby do
  gem "activerecord-jdbc-adapter"
  gem "activerecord-jdbcsqlite3-adapter"
  gem "jruby-openssl"
end

platforms :ruby do
  gem "sqlite3"
end
