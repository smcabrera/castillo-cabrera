#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'

# Optional name otherwise just generated from the file name
program :name, "Foo Bar"
program :version, '0.0.1'
program :description, 'stupid command that prints foo or bar'

command :foo do |c|
  c.syntax = 'foobar foo [options]'
  c.summary = 'Foo!'
  c.description = 'Displays foo'
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Foo.rb::Commands::Foo
    say 'foo'
  end
end

command :bar do |c|
  c.syntax = 'foobar bar [options]'
  c.summary = ''
  c.description = 'display bar with optional prefix and suffix'
  c.example 'description', 'command example'
  c.option '--prefix STRING', String, 'Adds a prefix to bar'
  c.option '--suffix STRING', String, 'Adds a suffix to bar'
  c.action do |args, options|
    options.default :prefix => '(', :suffix => ')'
    say "#{options.prefix}bar#{options.suffix}"
  end
end

