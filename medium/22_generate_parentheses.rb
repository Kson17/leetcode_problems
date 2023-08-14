# @param {Integer} n
# @return {String[]}

def generate_parenthesis(n)
  result = []
  stack = []

  backtrack(0, 0, n, stack, result)

  result
end

def backtrack(open_n, closed_n, n, stack, result)
  if open_n == closed_n && open_n == n
    result << stack.join('')
    return
  end

  if open_n < n
    stack << '('
    backtrack(open_n + 1, closed_n, n, stack, result)
    stack.pop
  end

  if closed_n < open_n
    stack << ')'
    backtrack(open_n, closed_n + 1, n, stack, result)
    stack.pop
  end
end
