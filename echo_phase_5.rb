#!/usr/bin/env ruby
# encoding: UTF-8

def playback(input, array=[])
  if !array.include?(input) || input == array[0]
    "You said: #{input}"
  elsif input == array[-1]
    "Finally you said: #{input}"
  else
    "Then, you said: #{input}"
  end
end

puts "What do you want to say?"
answer = gets.chomp
long_answers = []

if answer == "Nothing!"
  puts "Ok, fine!"
elsif answer == "I have a lot to say"
  puts "Ok, let's hear it!"
  long = ''
    while long != "done"
      long = gets.chomp
      long_answers.push(long)
    end
  long_answers.pop
  long_answers.each do |long_answer|
    puts playback(long_answer, long_answers)
  end
  puts "Phew! Glad you got all #{long_answers.length} of those things off your chest!"
elsif answer == "I have something prepared"
  puts "Ok, where can I find what you want to say?"
  file = gets.chomp
  while !File.exists?(file)
    puts "I couldn't find that file"
    puts "Where can I find what you want to say?"
    file = gets.chomp
  end
  File.open(file, 'r').each do |f|
    long_answers.push(f.chomp)
  end
  File.open(file, 'r').each do |f|
    puts playback(f.chomp, long_answers)
  end
  puts "Phew! Glad you got all #{long_answers.length} of those things off your chest!"
else
  puts playback(answer)
end
