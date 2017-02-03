class MinKeyPresses
  attr_reader :str

  def initialize(str)
    @str = str
    @letter_count = {}
    @optimized_keys = {}
    @all_keys = [[], [], [], [], [], [], [], []]
    @key_labels = [2, 3, 4, 5, 6, 7, 8, 9]
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
    hash_in_order.keys
  end

  # put each key's letters into an array
  def group_letters_into_keys
    letters_in_order = ordered_letters

    until letters_in_order.length == 0
      @all_keys.each { |key| key.push(letters_in_order.shift) if letters_in_order[0] != nil }
    end

    @all_keys
  end

end

key = MinKeyPresses.new("The quick brown fox jumps over the lazy dog.")
p key.ordered_letters
