require ('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_2.rb')

class CardTest < MiniTest::Test

  def setup
    @game = CardGame.new()
    @card1 = Card.new("Spades", 3)
    @card2 = Card.new("Clubs", 6)
    @card3 = Card.new("Hearts", 1)
  end

  def test_get_card_suit
    assert_equal("Spades",@card1.suit)
  end

  def test_get_card_value
    assert_equal(6,@card2.value)
  end

  def test_card_is_ace__negative
    assert_equal(false,@game.check_for_ace(@card2))
  end

  def test_card_is_ace__positive
    assert_equal(true,@game.check_for_ace(@card3))
  end

  def test_highest_card
    assert_equal(@card2,@game.highest_card(@card2,@card3))
  end

  def test_cards_total
    assert_equal("You have a total of 10",@game.cards_total([@card1,@card2,@card3]))
  end



end
