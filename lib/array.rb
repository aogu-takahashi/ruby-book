# 配列

a = [1, 2, 3]
a = ["apple", "orange", "banana"]
a = [1, "apple", 2, "orange", 3, "banana"]
a = [[10, 20, 30], ["apple", "orange", "banana"]]

pp a[0]
pp a.size

a = [1, 2, 3]
a[1] = 20
pp a

# 配列より大きな値の添字を指定し、要素を追加すると、間の値がnilで埋められる
a = [1, 2, 3]
a[5] = 50
pp a

# <<
# 配列の最後に要素を追加する
a = [1, 2, 3]
a << 4
pp a

# 要素を削除する
a.delete_at(1)
pp a

# 配列を使った多重代入
a, b = [1, 2]
pp a
pp b

quotient, remainder = 14.divmod(3)
pp quotient
pp remainder

# 配列の取得方法
a = [1, 2, 3, 4, 5]
pp a[1, 3]
pp a.values_at(0, 2, 4)
pp a[a.size - 1] # 最後の要素の取得
pp a[-1] # 最後の要素の取得
pp a.last
pp a.last(2)
pp a.first
pp a.first(2)

# 配列要素の変更方法
a = [1, 2, 3, 4, 5]
a[-3] = -10
a[1, 3] = 100 # 1番目から3つ分の要素を100に変更

a = []
a.push(1)
a << 2
pp a

# 要素の削除
a = [1, 2, 3, 4, 5]
a.delete(2) # 指定した値を削除
a.delete(7) # 指定した値が存在しない場合はnilを返す

# 配列の連結
a = [1]
b = [2, 3]
a.concat(b) # 破壊的メソッド
pp a

a = [1]
b = [2, 3]
a + b # 非破壊的メソッド
pp a

# 配列の和集合、差集合、積集合
a = [1, 2, 3]
b = [3, 4, 5]
# 以下は非破壊的
pp a | b # 和集合
pp a - b # 差集合
pp a & b # 積集合

# Setクラスを使用すると、集合演算を使用できる
# Setクラスは配列よりも高速に集合演算を行うことができる
require "set"
a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
pp a | b # 和集合
pp a - b # 差集合
pp a & b # 積集合

