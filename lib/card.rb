
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = check_value(value)
    @suit = check_suit(suit)


  end

  def check_value(value)
    case value
    when (1..13)
      return value
    else
      return raise ArgumentError, "This is not a recognized value."

    end
  end

  def check_suit(suit)
    case suit
    when :hearts, :spades, :clubs, :diamonds
      return suit
    else
      raise ArgumentError, "This is not a recognized suit."
    end
  end

  def to_s
    ending =  "of #{@suit.to_s}"

    if (2..10).include? @value
      return "#{@value} #{ending}"
    elsif @value == 1
      return "Ace #{ending}"
    elsif @value == 11
      return "Jack #{ending}"
    elsif @value == 12
      return "Queen #{ending}"
    elsif @value == 13
      return "King #{ending}"
    end
  end

end
