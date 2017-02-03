require_relative '../min_key_presses'

describe 'MinKeyPresses' do
  let(:typed_long) { MinKeyPresses.new("The quick brown fox jumps over the lazy dog.") }
  let(:typed_short) { MinKeyPresses.new("Hi.") }

  describe '::new' do
    it 'gets initialized with a string' do
      string = MinKeyPresses.new("hi there")
      expect(string.str).to eq("hi there")
    end
  end

  describe 'remove non-alphabetic characters' do
    it 'removes non-alphabetic characters and puts alphabetic characters into array' do
      expect(typed_short.remove_non_alphabetic).to eq(['h', 'i'])
    end
  end
end
