class MinKeyPresses
  attr_reader :str

  def initialize(str)
    @str = str
    @letter_count = {}
    @optimized_keys = {}
  end

  # remove non-alphabetic chars, put alphabetic chars into array
  def alphabetic_chars
    non_alphabetic = @str.gsub(/[^a-zA-Z]/, '').downcase
    letter_array = non_alphabetic.split('')
  end

  # count occurences of each letter and put in hash
  def count_letters
    alphabetic_chars.each do |letter|
      if @letter_count[letter] != nil
        @letter_count[letter] += 1
      else
        @letter_count[letter] = 1
      end
    end

    @letter_count
  end

  # order the letters hash from most frequent to least
  def ordered_letters
    hash_in_order = count_letters.sort_by {|key, value| value}.reverse.to_h
    @letters_in_order = hash_in_order.keys
  end

end
