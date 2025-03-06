# && や || は必ずしも真偽値を返すわけではない
# Rubyは左から順番に式を評価し、式全体の真偽値が確定した時点で評価を終了する（短絡評価）

1 && 2 && 3
1 && nil && 3
1 && false && 3

# 優先順位が低いand, or, not
# 高い
# !
# &&
# ||
# not
# and or
# 低い
t1 = true
f1 = false

p !f1 || t1
p not(f1 || t1) # not f1 || t1 と同じ

# and or は制御フローに使用するのが向いている
# user.valid? and send_email_to(user)
# 別の記述のしかた
# user.valid? && send_email_to(user)

# unless
status = "error"
unless status == "ok"
  p "異常です"
else
  p "正常です"
end

# unlessの戻り値を変数に代入する
status = "error"
message =
  unless status == "ok"
    "異常です"
  else
    "正常です"
  end
p "message: #{message}"

# unlessを修飾子として使う
"異常があります" unless status == "ok"

# == true や == false は使用しない
s = ""
if s.empty? == true
  p "空です"
end

if s.empty?
  p "空です"
end

unless s.empty?
  p "空ではありません"
end

# == nil は使用しない
user = nil

if user == nil
  p "ユーザーが存在しません"
end

if user.nil?
  p "ユーザーが存在しません"
end

# case文
# 複数の値と比較する場合、elsifよりシンプルに記述できる
country = "italy"
case country
when "japan"
  p "こんにちは"
when "us"
  p "hello"
when "italy"
  p "ciao"
else
  p "???"
end

# case文のwhen節に複数の値を指定できる
country = "アメリカ"
case country
when "japan", "日本"
  p "こんにちは"
when "us", "アメリカ"
  p "hello"
else
  p "???"
end

# case文の返り値を変数に代入する
message =
  case country
  when "japan", "日本"
    "こんにちは"
  end

