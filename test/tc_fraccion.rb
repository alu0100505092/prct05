require_relative 'fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
    attr_reader :f1, :f2    
    
    def setup 
        @f1 = Fraccion.new(3,2)
        @f2 = Fraccion.new(7,5)
        
    end 
    
    def test_suma
    end

    def test_resta
    end
    
    def test_multiplicacion
    end
    
    def test_division
    end
    
end    
