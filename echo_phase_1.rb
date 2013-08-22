#!/usr/bin/env ruby
# encoding: UTF-8

def playback (input)
  puts "You said: #{input}"
end

puts "What do you want to say?"
answer = gets.chomp
playback (answer)

