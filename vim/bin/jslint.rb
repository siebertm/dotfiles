#!/usr/bin/env ruby

system("v8 -e \"var files = [#{ARGV.map { |v| "'#{v}'" }.join(',')}]\" #{File.dirname(__FILE__)}/jslint.js")

