require_relative '../min_key_presses'

describe 'MinKeyPresses' do
  let(:typed_long) { MinKeyPresses.new("The quick brown fox jumps over the lazy dog.") }
  let(:typed_medium) { MinKeyPresses.new("Medium string.") }
  let(:typed_short) { MinKeyPresses.new("Hi.") }

  describe '::new' do
    it 'gets initialized with a string' do
      string = MinKeyPresses.new("hi there")
      expect(string.str).to eq("hi there")
    end
  end

  describe 'find alphabetic characters' do
    it 'removes non-alphabetic characters and puts alphabetic characters into array' do
      expect(typed_short.alphabetic_chars).to eq(['h', 'i'])
    end
  end

  describe 'count letters and put them in order' do
    it 'counts the occurences of each letter and puts them in a hash' do
      expect(typed_medium.count_letters).to eq({"m"=>2, "e"=>1, "d"=>1, "i"=>2, "u"=>1, "s"=>1, "t"=>1, "r"=>1, "n"=>1, "g"=>1})
    end

    it 'puts letters from most frequent to least' do
      expect(typed_medium.ordered_letters).to eq(["m", "i", "t", "s", "u", "n", "r", "d", "e", "g"])
    end
  end

end
