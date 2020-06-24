require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')

class DrinkTest < MiniTest::Test

    def setup()
        @drink = Drink.new("Guinness", 5)
    end

    def test_check_name()
        assert_equal("Guinness", @drink.name)
    end

    def test_check_price()
        assert_equal(5, @drink.price)
    end

end