require 'pry'

class Anagram

  attr_accessor :word, :match

  def initialize(word)
    @word = word
  end

  def match(array)
    array_match = []
    word_array = []
    #iterate over array conating strings
    array.each do |w|
        #if length of word == length of word in array
        #possible anagram
        if w.length == @word.length

          word_array = @word.split("")
          binding.pry
          array_match << w.split("")
            array_match.each do |i|
              if i.sort == word_array.sort
                @match << i.sort.join("")
              end
            end

          end
        end
  end
end




#end
