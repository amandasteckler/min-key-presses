require_relative "../min_key_presses"

describe "MinKeyPresses" do
  let(:typed_long) { MinKeyPresses.new("The quick brown fox jumps over the lazy dog.") }
  let(:typed_medium) { MinKeyPresses.new("Medium string.123") }

  describe "::new" do
    it "gets initialized with a medium-sized string" do
      expect(typed_medium.str).to eq("Medium string.123")
    end

    it "gets initialized with a long-sized string" do
      expect(typed_long.str).to eq("The quick brown fox jumps over the lazy dog.")
    end
  end

  describe "find alphabetic characters" do
    it "removes non-alphabetic characters from medium-sized string and puts alphabetic characters into array" do
      expect(typed_medium.alphabetic_chars).to eq(["m", "e", "d", "i", "u", "m", "s", "t", "r", "i", "n", "g"])
    end

    it "removes non-alphabetic characters from long-sized string and puts alphabetic characters into array" do
      expect(typed_long.alphabetic_chars).to eq(["t", "h", "e", "q", "u", "i", "c", "k", "b", "r", "o", "w", "n", "f", "o", "x", "j", "u", "m", "p", "s", "o", "v", "e", "r", "t", "h", "e", "l", "a", "z", "y", "d", "o", "g"])
    end
  end

  describe "count letters and put them in order" do
    it "counts the occurences of each letter from medium-sized string and puts them in a hash" do
      expect(typed_medium.count_letters).to eq({"m"=>2, "e"=>1, "d"=>1, "i"=>2, "u"=>1, "s"=>1, "t"=>1, "r"=>1, "n"=>1, "g"=>1})
    end

    it "counts the occurences of each letter from long-sized string and puts them in a hash" do
      expect(typed_long.count_letters).to eq({"t"=>2, "h"=>2, "e"=>3, "q"=>1, "u"=>2, "i"=>1, "c"=>1, "k"=>1, "b"=>1, "r"=>2, "o"=>4, "w"=>1, "n"=>1, "f"=>1, "x"=>1, "j"=>1, "m"=>1, "p"=>1, "s"=>1, "v"=>1, "l"=>1, "a"=>1, "z"=>1, "y"=>1, "d"=>1, "g"=>1})
    end

    it "puts letters from medium-sized string in array ordered most frequent to least" do
      expect(typed_medium.ordered_letters).to eq(["m", "i", "t", "s", "u", "n", "r", "d", "e", "g"])
    end

    it "puts letters from long-sized string in array ordered most frequent to least" do
      expect(typed_long.ordered_letters).to eq(["o", "e", "r", "t", "u", "h", "s", "p", "m", "j", "x", "f", "n", "w", "b", "k", "c", "i", "q", "d", "y", "z", "a", "l", "v", "g"])
    end

  end

  # describe "group letters into arrays" do
  #   it "puts each key's letters into arrays" do
  #     expect (typed_long.group_letters_into_keys).to eq()
  #   end
  # end

end
