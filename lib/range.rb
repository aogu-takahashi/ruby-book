1..5
1...5
"a".."e"
"a"..."e"

a = [1, 2, 3, 4, 5]
p a[1..3]

a = ["a", "b", "c", "d", "e"]
p a[1..3]

# n以上m以下
def liquid?(temperature)
  (0...100).include?(temperature)
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

# case文で使用する
def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end
p charge(3)
p charge(12)
p charge(16)
p charge(25)

# 配列を作る
(1..5).to_a
("a".."e").to_a
[*1..5]

# 繰り返し処理を行う
sum = 0
(1..4).each { |n| sum += n }
p sum
