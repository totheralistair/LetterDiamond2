require 'rspec/expectations'
require 'test/unit'


class TestDiamond < Test::Unit::TestCase

  def test_kind_of_actually_everything
  p __method__


    s = '_'*0
    s[0] = 'A'

    p s
    p '--------------------'
    puts


# "A"


    x = 0

    s = '_'*x
    s[x] = 'A'

    p s
    p '--------------------'
    puts

# "A"


    c = 'B'
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    x = alphabet.index c
    p x

    s = '_'*x
    s[x] = c

    p s
    p '--------------------'
    puts


# 1
# "_B"



    (0..x).each  { |r|
      s = '_'*x
      s[r] = alphabet[r]
      p s
    }

    p '--------------------'
    puts


# "A"
# "_B"



    x=2
    (0..x).each  { |r|
      right = '_'*(x+1)
      right[r] = alphabet[r]
      left = right.reverse
      p left + right
    }

    p '--------------------'
    puts

# "__AA__"
# "_B__B_"
# "C____C"




    x=2
    (0..x).each  { |r|
      right = '_'*(x+1)
      right[r] = alphabet[r]
      left = right.reverse
      left = left[0, x]
      p left + right
    }

    p '--------------------'
    puts

# "__A__"
# "_B_B_"
# "C___C"




    x=2
    (0..x).each  { |r|
      right = '_'*(x+1)
      right[r] = alphabet[r]
      left = right.reverse[0, x]
      p left + right
    }
    (0..x).each  { |r|
      right = '_'*(x+1)
      right[x-r] = alphabet[x-r]
      left = right.reverse
      left = left[0, x]
      p left + right
    }

    p '--------------------'
    puts

# "__A__"
# "_B_B_"
# "C___C"
# "C___C"
# "_B_B_"
# "__A__"





    p 'and now, finally, char in, chars out'
    puts

    def diamond c

      alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
      x = alphabet.index c

      (0..x).each  { |r|
        right = ' '*(x+1)
        right[r] = alphabet[r]
        left = right.reverse[0, x]
        p left + right
      }
      if x>0
        (0..x).each  { |r|
          right = ' '*(x+1)
          right[x-r] = alphabet[x-r]
          left = right.reverse[0, x]
          p left + right
        }
      end
      puts

    end

    diamond 'A'
    diamond 'B'
    diamond 'C'
    diamond 'D'


  # "and now, finally, char in, chars out"
  #
  # "A"
  #
  # " A "
  # "B B"
  # "B B"
  # " A "
  #
  # "  A  "
  # " B B "
  # "C   C"
  # "C   C"
  # " B B "
  # "  A  "
  #
  # "   A   "
  # "  B B  "
  # " C   C "
  # "D     D"
  # "D     D"
  # " C   C "
  # "  B B  "
  # "   A   "
  #


  end

end
