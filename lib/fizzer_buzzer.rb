module FizzerBuzzer
  def generate_fizzer(number)
    x = ''
    x += 'Fizz' if number % 3 == 0
    x += 'Buzz' if number % 5 == 0
    x
  end
end