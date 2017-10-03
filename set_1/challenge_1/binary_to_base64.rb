#!/usr/bin/env ruby
require 'Base64'

unless binary_string = String(ARGV[0] || STDIN.gets.chomp)
  puts "Invalid input: #{binary_string}"
  exit(1)
end
base64_string = Base64.encode64 binary_string
STDOUT.puts base64_string
