#!/usr/bin/env ruby
#anagrams checker
#Author: Anupam Kumar
module Anagram

    def sort #to sort all the words so, that it can check for anagram
        self.chars.sort.join
    end

    def anagram(other) #checking anagram or not
        return false if self.length != other.length #if the string lenth is not same then words can't be anagram

        self.sort == other.sort #checking with the sorted string
    end
end

class String #include user defined module to String class so that we can make calls with the string
    include Anagram
end
if ARGV.length != 0 && __FILE__ == $0
    filename = ARGV[0] #read from file

    words = IO.readlines(filename).map &:chomp #Array of words
    
else
    words = Array.new
    input = gets.chomp
    while input != '' do
        words << input
        input = gets.chomp
    end
end

while 0 < words.size do #check anagrams for all the words
    master = words[0] #current word as master
    words.shift #remove master form array to prevent from same word as anagram
    print "#{master} "
    words.each do |word| #checking for master's anagram in rest of the words
        if master.anagram(word)
            print "#{word} "
            words.delete(word) #remove the word if it is anagram 
        end
    end
    puts
end