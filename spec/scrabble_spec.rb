require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('Returns a score for a one-point letter') do
    expect(("a").scrabble()).to(eq(1))
  end

  it('Returns a score for any two-point letter') do
    expect(("d").scrabble()).to(eq(2))
  end
end
