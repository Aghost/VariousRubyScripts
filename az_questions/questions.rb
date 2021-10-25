#!/usr/bin/env ruby

def ask question
  puts "#{question[0]}"
  answer = gets.chomp
  puts answer.downcase == question[1].downcase ? "Correct!" : "false, answer was: #{question[1]}"
  #gets(question[1].downcase).chomp
end

def load_questions filename
  File.readlines(filename).shuffle.each { |line| ask line.split('=') }
end

load_questions 'azure_questions'
