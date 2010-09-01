#!/usr/bin/env ruby
class Fixnum
  def factorize
    return [1] if self == 1
    newnum = self
    newtext = []
    checker = 2
    while (checker**2) <= newnum
      if newnum % checker == 0
        newtext << checker
        newnum /= checker
      else
        checker += 1
      end
    end
    newtext << newnum if newnum != 1
    newtext
  end
end
module Txt2Bf
  class Convert
    def initialize
      @bf = ""
    end
    def append s=""
      @bf << s
    end
    def bf
      @bf
    end
    def append_factors(factors,i,op=nil)
      op = '+' if ! op
      notop = (op == '+') ? '-' : '+'
	    append "[>" if i != 0
      tmpop = (i != factors.length-1) ? '+' : op
	    append tmpop*factors[i]
      append_factors(factors,i+1,op) if i + 1 < factors.length
	    append "<-] " if i != 0
    end
    def txt2bf string
      return '' if ! string || string.empty?
	    bytes = string.each_byte.map
	    min_val = bytes.min
	    factors = min_val.factorize
	    res = 0
	    if factors.length == 1
        factors = (min_val-1).factorize
        res = 1
      end
	    append_factors(factors,0)
	    append " "+">"*(factors.length-1)+"+"*res
	    bytes.each do |s|
		    if s == min_val
			    append ". "
		    elsif s < min_val
          x = min_val - s
          ff = x.factorize
          res = 0
          if (ff.length == 1) && (x!=1)
            x -= 1
            ff = x.factorize
            res = 1
          end
          max_f = ff.max
          complement = x / max_f
          append '<'
          append_factors([max_f,complement],0,'-')
          append ">"+"-"*res+". "
			    min_val -= min_val-s
		    elsif s > min_val
          x = s - min_val
          ff = x.factorize
          res = 0
          if (ff.length == 1) && (x!=1)
            x -= 1
            ff = x.factorize
            res = 1
          end
          max_f = ff.max
          complement = x / max_f
          append '<'
          append_factors([max_f,complement],0,'+')
			    append ">"+"+"*res+". "
			    min_val += s-min_val
		    end
      end
	    bf
    end
  end
end
class String
  def to_bf
    Txt2Bf::Convert.new.txt2bf(self)
  end
end
