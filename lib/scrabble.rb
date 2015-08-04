class String
  define_method(:scrabble) do
    tile = self
    if tile == "a"
      tile = 1
    else
      tile = 2
    end
    tile
  end
end
