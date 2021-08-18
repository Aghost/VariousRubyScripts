#!/usr/bin/env ruby

input_list = 'latin-words_list.md'
words_amount = 10

if ARGV[0]
  input_list = ARGV[0]
  if ARGV[1] then words_amount = ARGV[1].to_i end
end

tmp = []

File.readlines(input_list).each do |line|
  tmp.push line.chomp
end

words_amount.times do
  print tmp[rand(1..tmp.length)]

  if (rand(1..50) > 49)
    puts "\n\n"
  end
end
puts
