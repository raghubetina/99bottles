class Bottles
  def verse(thing)
    <<-TEXT.gsub(/^\s+/, "")
      99 bottles of beer on the wall, 99 bottles of beer.
      Take one down and pass it around, 98 bottles of beer on the wall.
    TEXT
  end
end
