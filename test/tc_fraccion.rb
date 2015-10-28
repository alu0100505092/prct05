require '../lib/fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
    attr_reader :f1, :f2, :rest, :mult, :div  
    
    def setup 
        @f1 = Fraccion.new(3,2)
        @f2 = Fraccion.new(7,5)
        @rest = @f2-@f1
        @mult = @f2*@f1
        @div = @f1/@f2
        
    end 
    
    def test_suma
         
    end

    def test_resta
        
    end
    
    def test_multiplicacion
        assert_equal(mult.num, 21)
        assert_equal(mult.denum, 10)
    end
    
    def test_division
        assert_equal(div.num, 15)
        assert_equal(div.denum, 14)
    end
    
end    
