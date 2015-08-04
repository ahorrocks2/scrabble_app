require('rspec')
require('scrabble')

describe('String#scrabble')
  it('Returns a score for a letter') do
    expect("A".scrabble()).to(eq(1))
  end
end
