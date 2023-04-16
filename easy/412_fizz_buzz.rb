# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  index = 1
  result = []

  while n >= index do
    if index % 3 == 0 && index % 5 == 0
      result[index - 1] = 'FizzBuzz'
    elsif index % 3 == 0
      result[index - 1] = 'Fizz'
    elsif index % 5 == 0
      result[index - 1] = 'Buzz'
    else
      result[index - 1] = index.to_s
    end

    index += 1
  end

  result
end
