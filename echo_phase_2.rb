#!/usr/bin/env ruby
# encoding: UTF-8

def playback (input)
  puts "You said: #{input}"
end

puts "What do you want to say?"
answer = gets.chomp

if answer == "Nothing!"
  puts "Ok, fine!"
elsif answer == "I have a lot to say"
  puts "I don't have time for that right now!"
else
  playback(answer)
end
