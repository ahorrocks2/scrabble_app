class String
  define_method(:scrabble) do
    tile = self
    if tile == "a"
      tile = 1
    elsif tile == "d"
      tile = 2
    elsif tile == "b"
      tile = 3
    elsif tile == "f"
      tile = 4
    elsif tile == "k"
      tile = 5
    elsif tile == "j"
      tile = 8
    else
      tile = 10
    end
    tile
  end
end
