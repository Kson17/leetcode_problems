require 'pry'
# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []

  tokens.each do |token|
    size = stack.size
    
    binding.pry

    case token
    when '+'
      stack << (stack.pop) + (stack.pop)
    when '-'
      second, first = stack.pop, stack.pop
      stack << (first) - (second)
    when '*'
      stack << (stack.pop.to_i) * (stack.pop)
    when '/'
      second, first = stack.pop.to_f, stack.pop.to_f
      stack << ((first) / (second)).truncate
    else
      stack << token.to_i
      next
    end
  end

  stack.last
end

tokens = ["2","1","+","3","*"]
p eval_rpn(tokens)
