class Fraccion
   attr_reader :num, :denum
   def initialize(num,denum)
      @num, @denum = num, denum
   end
   def to_s
      "(#{@num},#{@denum})"
   end
   def -(other)
      Fraccion.new(@num-other.a, @denum-other.b)
   end
   def +(other)
      Fraccion.new(@a+other.a, @b+other.b)
   end
   def *(other)
      return Fraccion.new(@num*other, @denum) if other.is_a? Numeric

      Fraccion.new(@num*other.num, @denum*other.denum)
   end
   def /(other)
      return Fraccion.new(@num, @denum*other) if other.is_a? Numeric
      
      Fraccion.new(@num*other.denum, @denum*other.num)
   end
end