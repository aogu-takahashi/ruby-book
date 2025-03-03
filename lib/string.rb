a = <<TEXT
これはヒアドキュメントです。
複数行にわたる文字列を作成するのに便利です。
TEXT

puts a

b =
  <<-TEXT
これはヒアドキュメントです。
<<-を使うと最後の識別子をインデントさせることができます。
  TEXT

puts b

c = <<~TEXT
      これはヒアドキュメントです。
      <<~を使うと内部文字列のインデント部分が無視されます。
    TEXT

puts c

name = "Alice"
d = <<~TEXT
      こんにちは#{name}さん
      ヒアドキュメントの中では展開式が有効。
    TEXT

puts d

# ヒアドキュメントを引数としてわたす
e = "Ruby"
e.prepend(<<~TEXT)
  Java
  Python
TEXT
puts e

# ヒアドキュメントの文字列に対して、メソッドを呼び出す
f = <<~TEXT.upcase
  google
  yahoo
TEXT
puts f

# ヒアドキュメントで配列をつくる
g = [<<~TEXT1, <<~TEXT2]
  Ruby
TEXT1
  Python
TEXT2

puts g[0]
puts g[1]

# フォーマットを指定して文字列を作成する
puts sprintf('%0.3f', 1.2)
puts sprintf('%0.3f + %0.3f', 1.2, 0.48)

# その他
puts 123.to_s
puts [10, 20, 30].join
puts "Ruby" * 10
puts "\u3042\u3044\u3046"
