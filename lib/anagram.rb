require 'pry'

class Anagram

  attr_accessor :word, :match

  def initialize(word)
    @word = word
  end

  def match(array)
    @match = []
    #iterate over array conating strings
    array.each do |w|
        #if length of word == length of word in array
        #possible anagram
        if w.length == @word.length
          if w.split("").sort  == @word.split("").sort
              @match << w
          end
        end
      end
  end
end




#end
