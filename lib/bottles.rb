require "active_support/core_ext/string"

class Bottles
  def verse(number_of_bottles)
    next_number = number_of_bottles - 1

    "#{first_line(number_of_bottles)}\n#{second_line(number_of_bottles)}\n"
  end

  private

    def first_line(number_of_bottles)
      "#{number_of_bottles} #{"bottle".pluralize(number_of_bottles)} of beer on the wall, #{number_of_bottles} #{"bottle".pluralize(number_of_bottles)} of beer."
    end

    def second_line(number_of_bottles)
      next_number = number_of_bottles - 1

      if number_of_bottles == 1
        "Take it down and pass it around, no more bottles of beer on the wall."
      else
        "Take one down and pass it around, #{next_number} #{"bottle".pluralize(next_number)} of beer on the wall."
      end
    end
end
