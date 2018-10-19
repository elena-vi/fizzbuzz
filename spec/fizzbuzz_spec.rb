class Fizzbuzz

  def print(num)
    return "wrong input type" unless num.class == Integer
    return "Fizzbuzz" if (num % 3 == 0 ) && (num % 5 == 0)
    return "Fizz" if num % 3 == 0
    return "Buzz" if num % 5 == 0
    num
  end

end

describe Fizzbuzz do

  let(:fizzbuzz){Fizzbuzz.new}

  context 'when given a number that is a multiple of 3' do
    it 'should print fizz for 3' do
      expect(fizzbuzz.print(3)).to eq("Fizz")
    end

    it 'should print fizz for 6' do
      expect(fizzbuzz.print(6)).to eq("Fizz")
    end
  end

  context 'when given a number that is a multiple of 5' do
    it 'should print buzz for 5' do
      expect(fizzbuzz.print(5)).to eq("Buzz")
      end
    it 'should print buzz for 10' do
      expect(fizzbuzz.print(10)).to eq("Buzz")
    end
  end

  context 'when given a number that is a multiple of 3 and 5' do
    it 'should print fizzbuzz for 15'do
      expect(fizzbuzz.print(15)).to eq("Fizzbuzz")
      end
    it 'should print fizzbuzz for 30'do
      expect(fizzbuzz.print(30)).to eq("Fizzbuzz")
    end
  end

  context 'when given a number that is not a multiple of 3 or 5' do
    it 'should print 1' do
      expect(fizzbuzz.print(1)).to eq(1)
    end
    it 'should print 2' do
      expect(fizzbuzz.print(2)).to eq(2)
    end
  end

  context 'when given not a number' do
    it 'should gracefully fail when a class is given' do
      expect(fizzbuzz.print(fizzbuzz)).to eq('wrong input type')
    end
  end
end