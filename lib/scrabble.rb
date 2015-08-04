class String
  define_method(:scrabble) do
    self.downcase!()
    points = {"a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1, "d" => 2, "g" => 2, "b" => 3, "c" => 3, "m" => 3, "p" => 3, "f" => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4, "k" => 5, "j" => 8, "x" => 8, "q" => 10, "z" => 10
    }
    total_points = 0

    word = self.split("")
    word.each() do |tile|
      if points.fetch(tile) == 1
        tile = 1
      elsif points.fetch(tile) == 2
        tile = 2
      elsif points.fetch(tile) == 3
        tile = 3
      elsif points.fetch(tile) == 4
        tile = 4
      elsif points.fetch(tile) == 5
        tile = 5
      elsif points.fetch(tile) == 8
        tile = 8
      else
        tile = 10
      end
      total_points = total_points.+(tile)
    end
    total_points
  end
end




    #  if one_pointers.include?(tile)
    #    tile = 1
    #  elsif tile == "d" || tile == "g"
    #    tile = 2
    #  elsif three_pointers.include?(tile)
    #    tile = 3
    #  elsif four_pointers.include?(tile)
    #    tile = 4
    #  elsif tile == "q" || tile == "z"
    #    tile = 10
    #  elsif tile == "j" || tile == "x"
    #    tile = 8
    #  else
    #    tile = 5
    #  end
    #  total_points = total_points.+(tile)
    #end
    #total_points
  #end
#end
