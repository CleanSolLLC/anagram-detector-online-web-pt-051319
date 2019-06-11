require 'pry'

class Anagram

  attr_accessor :word, :match

  def initialize(word)
    @word = word
  end

  def match(array)
    array_match = []
    word_array = []
    array.each do |w|
        if w.length == @word.length
          word_array = @word.split("")
          array_match << w.split("")
            array_match.each do |i|
              if i.sort == word_array.sort
                binding.pry
                @match << i
              end
            end
          @match = []
          end
        end
    @match.join("")
  end
end




#end
