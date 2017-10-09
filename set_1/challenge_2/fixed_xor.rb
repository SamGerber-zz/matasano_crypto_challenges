#!/usr/bin/env ruby

hex_one = ARGV[0]
hex_two = ARGV[1]
binary_one = Array(String(hex_one)).pack('H*')
binary_two = Array(String(hex_two)).pack('H*')
puts ">>binary one:#{binary_one}<<"
puts ">>binary two:#{binary_two}<<"
unless binary_one.length == binary_two.length
  puts "Invalid input: #{hex_one} #{hex_two}"
  exit(1)
end

xor_bytes = binary_one.bytes.zip(binary_two.bytes).map { |one, two| one ^ two }

xor_string = xor_bytes.pack('c*')

STDOUT.puts ">>xor binary:#{xor_string}"
