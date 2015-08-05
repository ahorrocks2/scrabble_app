require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/scrabble_word') do
  @word = params.fetch('word').scrabble()
  erb(:scrabble_word)
end
