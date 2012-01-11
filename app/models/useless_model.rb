# test

class UselessModel < ActiveRecord::Base

  @array = %w{Do not write such useless code !}

  def some_method
    @array.each do |element|
      p element
      not_used = element + element * element / 5 - 17 ** 12 + 12 ** 17
    end
  end

  def same_method
    one = 1

    @array.each do |element|
      p element + 3
      not_used = element + 2 * element / 7 - 4 ** 5 + 5 ** 6
    end

    p one
    p one+one
    p one+one+one
  end
  
  def ten_cycles
    10.times do
      some_method
      9.times do
        same_method
        8.times do

          if true
            p 'true'
          end

          if false
            ten_cycles
          end

        end
      end
    end
  end


end
