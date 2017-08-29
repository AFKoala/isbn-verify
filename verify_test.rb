require 'minitest/autorun'
require_relative 'verify.rb'

class TestArray < Minitest::Test

    def test_1_to_1
        assert_equal(1,1)
    end

    def test_length_10
        check1 = "4820173001"
        assert_equal(10, check1.length)
    end

    def test_length_13
        check2 = "8201640572814"
        assert_equal(13, check2.length)
    end

    def test_length_10_2
        check3 = "870204-1736"
        check3 = check3.gsub(/-/, '')
        assert_equal(10, check3.length)
    end

    def test_length_13_2
        check4 = "870 204 1736-12 8"
        check4 = check4.gsub(/[ -]/, '')
        assert_equal(13, check4.length)
    end

end