# frozen_string_literal: true

require_relative "lib/coolinx/version"

Gem::Specification.new do |spec|
  spec.name = "coolinx"
  spec.version = Coolinx::VERSION
  spec.authors = ["David Crosby"]
  spec.email = ["dave@dafyddcrosby.com"]

  spec.summary = "A microblog static site generator for sharing links"
  spec.description = spec.summary
  spec.homepage = "https://github.com/dafyddcrosby/coolinx"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.1"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec)/|\.(?:git))})
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.add_dependency "haml"
  spec.add_dependency "rss"
end
