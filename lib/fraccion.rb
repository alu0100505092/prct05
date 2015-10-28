class Fraccion
   attr_reader :num, :denum
   
   def initialize(num,denum)
       @num, @denum = num, denum
   end
   
   def to_s
       "(#{@num},#{@denum})"
   end
   
   def -(other)
       return Fraccion.new(@num+other.num, @denum+other.denum) if @denum == other.denum
       
       a=[]
       b=[]
       cont=2
       i=0
       
       while !@denum*other.denum 
       
          a << @denum*cont
          b << other.denum*cont
          cont +=1
       
       end
       
       for i in @denum*other.denum
          
       end
      # r=@num*other.denum
      #s=other.num*@denum
      #t=@denum*other.denum
      #Fraccion.new(r-s, t)
     
     
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