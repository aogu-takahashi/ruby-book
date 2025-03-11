def fizz_buzz(n)
  result = "#{'Fizz' if n % 3 == 0}#{'Buzz' if n % 5 == 0}"
  result.empty? ? n.to_s : result
end
