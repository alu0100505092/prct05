require 'lib/fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
    attr_reader :f1, :f2, :rest, :mult, :div, :sum, :sum1, :rest1, :mult1, :div1 
    
    def setup 
        @f1 = Fraccion.new(3,2)
        @f2 = Fraccion.new(7,5)
        @f3 = Fraccion.new(3,8)
        @f4 = Fraccion.new(7,8)
        @sum = @f1+@f2
        @sum1 = @f3+@f4
        @rest = @f2-@f1
        @rest1 = @f4-@f3
        @mult = @f2*@f1
        @mult1 = @f4*(3)
        @div = @f1/@f2
        @div1 = @f3/(5)
        
    end 
    
    def test_suma
        assert_equal(sum.num, 29)
        assert_equal(sum.denum,10)
        assert_equal(sum1.num, 10)
        assert_equal(sum1.denum, 8)
    end

    def test_resta
        assert_equal(rest.num, -1)
        assert_equal(rest.denum, 10)
        assert_equal(rest1.num, 4)
        assert_equal(rest1.denum, 8)
    end
    
    def test_multiplicacion
        assert_equal(mult.num, 21)
        assert_equal(mult.denum, 10)
        assert_equal(mult1.num, 21)
        assert_equal(mult1.denum, 8)
    end
    
    def test_division
        assert_equal(div.num, 15)
        assert_equal(div.denum, 14)
        assert_equal(div1.num, 3)
        assert_equal(div1.denum, 40)
    end
    
end    
