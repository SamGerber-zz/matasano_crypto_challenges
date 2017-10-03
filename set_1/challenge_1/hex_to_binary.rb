#!/usr/bin/env ruby

hex_string = ARGV[0] || STDIN.gets.chomp
unless binary_string = Array(String(hex_string)).pack('H*')
  puts "Invalid input: #{binary_string}"
  exit(1)
end
STDOUT.puts binary_string
