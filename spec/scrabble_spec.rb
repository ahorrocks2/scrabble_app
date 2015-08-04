require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('Returns a score for points per letter') do
    expect(("a").scrabble()).to(eq(1))
  end

  it('Handles uppercase and lowercase letters') do
    expect(("A").scrabble()).to(eq(1))
  end

  it('Returns score of multiple letters') do
    expect(("dog").scrabble()).to(eq(5))
  end
end
