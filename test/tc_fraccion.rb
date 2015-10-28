require '../lib/fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
    attr_reader :f1, :f2, :rest, :mult   
    
    def setup 
        @f1 = Fraccion.new(3,2)
        @f2 = Fraccion.new(7,5)
        @rest = @f2-@f1
        @mult = @f2*@f1
        
    end 
    
    def test_suma
         
    end

    def test_resta
        
    end
    
    def test_multiplicacion
        assert_equal(mult.num, 21)
    end
    
    def test_division
    end
    
end    
