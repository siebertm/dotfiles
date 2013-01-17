#!/usr/bin/env ruby

system("node #{File.dirname(__FILE__)}/jslint.js #{ARGV.join(' ')}")
exit($?)

