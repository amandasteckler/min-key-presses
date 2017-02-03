class MinKeyPresses
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def remove_non_alphabetic
    non_alphabetic = @str.gsub(/[^a-zA-Z]/, '').downcase
    letter_array = non_alphabetic.split('')
  end
end
