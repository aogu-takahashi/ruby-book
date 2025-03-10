# Rubyではメソッドを呼び出す際に、引数の過不足があるとエラーになる
def greet(country)
  if country == "japan"
    "こんにちは"
  else
    "hello"
  end
end

# greet -> エラー
# greet("jp", "us") -> エラー
p greet("us")

# デフォルト引数
def greet(country = "japan")
  if country == "japan"
    "こんにちは"
  else
    "hello"
  end
end

p "引数なし greet -> #{greet} 引数あり greet -> #{greet("us")}"

# 引数のデフォルト値に動的な値や、他のmethodの戻り値を指定する
def foo(time = Time.now, message = bar)
  p "time: #{time}, message: #{message}"
end

def bar
  "bar"
end

foo

# ?で返すmethodは、監修として真偽値で返す > 述語メソッドという
p "abc".empty?
p "watach".include?("at")
p 1.odd?
p 2.even?
p nil.nil?

# !メソッドは破壊的なメソッドであることがある
a = "ruby"
a.upcase
p "a: #{a}"
a.upcase!
p "a: #{a}"
