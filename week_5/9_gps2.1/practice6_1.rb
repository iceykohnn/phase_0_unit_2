class CreditCard

  def initialize (number)
    if number.to_s.length != 16
      raise ArgumentError.new()
    end
    @number = number
  end

  def check_card
    numbers_to_array = []
    @number.to_s.split("").reverse.each_with_index { |item, index| index % 2 == 0 ? numbers_to_array << [item.to_i] : numbers_to_array << [item.to_i * 2] }
    numbers_to_array.map!{ |item| item[0] > 9 ? item[0].to_s.split("").map(&:to_i) : item }.flatten!.inject(:+) % 10 == 0
  end
end

def assert
    raise "Assertion failed!" unless yield
end

valid_number = 4563960122001999
credit = CreditCard.new(valid_number)
assert {credit.check_card() == true}

invalid_number = ("1"*16).to_i
credit = CreditCard.new(invalid_number)
assert {credit.check_card() == false}