#!/usr/bin/env ruby
# encoding: UTF-8

def playback (input)
  puts "You said: #{input}"
end

puts "What do you want to say?"
answer = gets.chomp
playback (answer)

counts = {}

letters = answer.gsub(/\s/,'').split(//)

letters.each do |letter|
  unless counts.has_key?(letter)
    counts[letter] = 0
  end

  counts[letter] += 1
end


test2 = counts.sort_by {|k,v|v}

second_last = test2[-2]

puts "'#{second_last[0]}' is the second most used character in what you said"
puts "'#{second_last[0]}' was used a total of #{second_last[1]}"



test = counts.max_by{|k,v|v}


