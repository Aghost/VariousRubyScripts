#!/usr/bin/env ruby

def ask question
  puts "#{question[0]}"
  answer = gets.chomp

  if answer == question[1]
    puts "Correct!"
  else
    puts "false, answer was: #{question[1]}"
  end

  #gets(question[1].downcase).chomp
end

def load_questions filename
  File.readlines(filename).shuffle.each do |line|
    ask line.split('=')
  end
end

load_questions 'azure_questions'
