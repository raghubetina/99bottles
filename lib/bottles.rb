require "active_support/core_ext/string"

class Bottles
  def verse(number_of_bottles)
    next_number = number_of_bottles - 1

    <<-TEXT.gsub(/^\s+/, "")
      #{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
      Take one down and pass it around, #{next_number} #{"bottle".pluralize(next_number)} of beer on the wall.
    TEXT
  end
end
