# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'terminal_colors'
  s.version = ENV.fetch 'GEM_VERSION'

  s.authors = ['Nathan Ladd']
  s.homepage = 'https://github.com/ntl/terminal-colors'
  s.email = 'nathanladd+github@gmail.com'
  s.licenses = %w(MIT)
  s.summary = "Apply ANSI terminal colors to strings"
  s.description = "Apply ANSI terminal colors to strings"

  s.require_paths = %w(lib)
  s.files = Dir.glob 'lib/**/*'
  s.platform = Gem::Platform::RUBY
end
