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

