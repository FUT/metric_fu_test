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

  def ten_conditions
    one = 1
    thee = 3
    if one + three + 1 == 5
      p 'five'
    else
      p 'not five'
      four = 4

      if four = 5
        four = 4
      end

      if four > 0
        p -1
        if four > 1
          p 0
          if four > 2
            p 1
          else
            p 2
          end
          p 3
        else
          p 4
        end
        p 5
      else
        p 6
      end
      p 7
    end
    p 8
  end

  def try_to_understand_me
    one = 1
    zero = ""
    fail = eval((one + zero.send(eval(one > zero.length ? 'length.to_sym' : 'divide_by_zero')) < 1) ? 'fail' : 'fail')
    if one == eval("1 if fail == eval('fail')")
      10.times do
        eval "p one"
        9.times do
          eval "p one"
          8.times do
            eval "p one"
            7.times do
              eval "p one"
              6.times do
                eval "p one"
              end
              eval "p one"
            end
            eval "p one"
          end
          eval "p one"
        end
        eval "p one"
      end
      eval "p one"
    end
  end
  
  def similar_1(x, y, z, t)
      x += y
      y += z
      z -= t
      t /= z
  end
  
  def similar_2(x, y, z, t)
      x += y
      y += z
      z -= t
      t /= z
  end
  
  def similar_3(x, y, z, t)
    x += y
    y += z
    z -= t
    t /= z
  end
  
  def prefix_1(pre_x, pre_y, pre_z)
      pre_x = pre_y = pre_z = 1
  end

  def prefix_2(pro_x, pro_y, pro_z)
      pro_x = pro_y = pro_z = 1
  end
  
  def control_couple(is_true)
    if is_true
      p 'true'
      similar_1
    else
      p 'false'
      similar_2
    end
  end

end
