require('capybara/rspec')
require('./app')
(Capybara.app = Sinatra::Application)
set(:show_exceptions, false)

describe('scrabble', {:type => :feature}) do
  it('Takes a word and returns the scrabble score') do
    visit('/')
    fill_in('word', :with => 'quiz')
    click_button('Send')
    expect(page).to have_content(22)
  end
end
