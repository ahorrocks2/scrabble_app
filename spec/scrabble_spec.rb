require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('Returns a score for a one-point letter') do
    expect(("a").scrabble()).to(eq(1))
  end

  it('Returns a score for any two-point letter') do
    expect(("d").scrabble()).to(eq(2))
  end

  it('Returns a score for any three-point letter') do
    expect(("b").scrabble()).to(eq(3))
  end

  it('Returns a score for any four-point letter') do
    expect(("f").scrabble()).to(eq(4))
  end

  it('Returns a score for any five-point letter') do
    expect(("k").scrabble()).to(eq(5))
  end

  it('Returns a score for any eight-point letter') do
    expect(("j").scrabble()).to(eq(8))
  end

  it('Returns a score for any ten-point letter') do
    expect(("q").scrabble()).to(eq(10))
  end
end
