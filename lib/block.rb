numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
p sum


numbers = [1, 2, 3, 4]
numbers.delete(2)
p numbers

numbers = [1, 2, 3, 4]
numbers.delete_if do |n|
  n.odd?
end
p numbers

# mapはブックの戻り値が配列の要素となる新しい配列を作成する
numbers = [1, 2, 3, 4]
new_numbers = numbers.map { |n| n * 10 }
p new_numbers

# selectは各要素に対してブロックを評価
# その戻り値の値が真の要素を集めた配列を返すメソッド
numbers = [1, 2, 3, 4]
even_numbers = numbers.select { |n| n.even? }
p even_numbers

# rejectはselectの反対
numbers = [1, 2, 3, 4]
odd_numbers = numbers.reject { |n| n.even? }
p odd_numbers

# findは最初に真になった要素を返す
numbers = [1, 2, 3, 4]
first_even_number = numbers.find { |n| n.even? }
p first_even_number

# sumは配列の要素をすべて足し合わせた値を返す
numbers = [1, 2, 3, 4]
sum = numbers.sum
p sum

numbers = [1, 2, 3, 4]
sum = numbers.sum { |n| n * 2 }
p sum

# join
chars = ["a", "b", "c", "d"]
p chars.join
p chars.join("-")

# &を使用してシンプルに書く
p ["ruby", "java", "python"].map(&:upcase)
p [1, 2 ,3 , 4].select(&:even?)
