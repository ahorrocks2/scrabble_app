class String
  define_method(:scrabble) do
    self.downcase!()
    one_pointers = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    three_pointers = ["b", "c", "m", "p"]
    four_pointers = ["f", "h", "v", "w", "y"]
    total_points = 0

    word = self.split("")
    word.each() do |tile|
      if one_pointers.include?(tile)
        tile = 1
      elsif tile == "d" || tile == "g"
        tile = 2
      elsif three_pointers.include?(tile)
        tile = 3
      elsif four_pointers.include?(tile)
        tile = 4
      elsif tile == "q" || tile == "z"
        tile = 10
      elsif tile == "j" || tile == "x"
        tile = 8
      else
        tile = 5
      end
      total_points = total_points.+(tile)
    end
    total_points
  end
end
