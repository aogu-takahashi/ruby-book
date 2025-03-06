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
end
