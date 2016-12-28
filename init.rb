lib_dir = File.join __dir__, 'lib'
$LOAD_PATH.unshift lib_dir unless $LOAD_PATH.include? lib_dir

require_relative './gems/gem_init'

require 'terminal_colors'
