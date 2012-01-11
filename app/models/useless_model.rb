# test

class UselessModel < ActiveRecord::Base

  @array = %w{Do not write such useless code !}

  def some_m
    @array.each do |element|
      p element
      not_used = element + element * element / 5 - 17 ** 12 + 12 ** 17
    end
  end
end
