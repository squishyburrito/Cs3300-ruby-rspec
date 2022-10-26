# frozen_string_literal: true

require_relative '../lib/ruby_intro'

describe 'Ruby intro part 2' do
  describe '#hello' do
    it 'should be defined' do
      expect { hello('Testing') }.not_to raise_error#::NoMethodError)
    end
  
    it 'The hello method returns the correct string [3 points]', points: 3 do
      expect(hello('Dan').class).to eq(String)
      expect(hello('Dan')).to eq('Hello, Dan'), 'Incorrect results for input: "Dan"'
      expect(hello('BILL')).to eq('Hello, BILL'), 'Incorrect results for input: "BILL"'
      expect(hello('Mr. Ilson')).to eq('Hello, Mr. Ilson'), 'Incorrect results for input: "Mr. Ilson"'
    end
  end
  
  #use describe to define a collection of 5 tests
  describe '#starts_with_consonant?' do
    #test 1: 
    it 'should be defined' do
      #tests the parameter 'd' to not raise an error 
      expect { starts_with_consonant?('d') }.not_to raise_error#::NoMethodError)
    end
    #test 2:
    it 'classifies true cases [1 point]' , points: 1 do
      #tests the parameter eval to be not nil and not false
      expect(starts_with_consonant?('v')).to be_truthy, "'v' is a consonant"
      %w[v vest Veeee crypt].each do |string|
        #output if there is an error
        expect(starts_with_consonant?(string)).to be_truthy, "Incorrect results for input: \"#{string}\""
      end
    end
    #test 3:
    it 'classifies false cases [1 point]' , points: 1 do
      #checks for vowels eval to be nil or false
      expect(starts_with_consonant?('a')).to be_falsy, "'a' is not a consonant"
      %w[asdfgh Unix].each do |string|
        #output if there is an error
        expect(starts_with_consonant?(string)).to be_falsy, "Incorrect results for input: \"#{string}\""
      end
    end
    #test 4:
    it 'works on the empty string [0.5 points]' , points: 0.5 do
      #check for an empty string, eval is nil or false
      expect(starts_with_consonant?('')).to be_falsy
    end
    #test 5:
    it 'works on nonletters [0.5 points]' , points: 0.5 do
      #checks for characters, eval is nil or false
      expect(starts_with_consonant?('#foo')).to be_falsy
    end
  end
  
  describe '#binary_multiple_of_4?' do
    it 'should be defined' do
      expect { binary_multiple_of_4?('yes') }.not_to raise_error#::NoMethodError)
    end
    it 'classifies valid binary numbers [3 points]' , points: 3 do
      %w[1010101010100 0101010101010100 100 0].each do |string|
        expect(binary_multiple_of_4?(string)).to be_truthy,  "Incorrect results for input: \"#{string}\""
      end
      %w[101 1000000000001].each do |string|
        expect(binary_multiple_of_4?(string)).not_to be_truthy,  "Incorrect results for input: \"#{string}\""
      end
    end
    it 'rejects invalid binary numbers [1 point]' , points: 1 do
      expect(binary_multiple_of_4?('a100')).to be_falsy, "'a100' is not a valid binary number!"
      expect(binary_multiple_of_4?('')).to be_falsy, 'The empty string is not a valid binary number!'
    end
  end
end
