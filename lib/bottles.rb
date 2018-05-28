require "active_support/core_ext/string"

class Bottles
  def verse(number_of_bottles)
    next_number = number_of_bottles - 1

    "#{first_line(number_of_bottles)}\n#{second_line(number_of_bottles)}\n"
  end

  private

    def first_line(number_of_bottles)
      if number_of_bottles == 0
        "No more bottles of beer on the wall, no more bottles of beer."
      else
        "#{number_of_bottles} #{"bottle".pluralize(number_of_bottles)} of beer on the wall, #{number_of_bottles} #{"bottle".pluralize(number_of_bottles)} of beer."
      end
    end

    def second_line(number_of_bottles)
      next_number = number_of_bottles - 1

      case number_of_bottles
      when 1
        "Take it down and pass it around, no more bottles of beer on the wall."
      when 0
        "Go to the store and buy some more, 99 bottles of beer on the wall."
      else
        "Take one down and pass it around, #{next_number} #{"bottle".pluralize(next_number)} of beer on the wall."
      end
    end
end
