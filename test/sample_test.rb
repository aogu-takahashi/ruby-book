# Minitestの基本
require "minitest/autorun"

class SampleTest < Minitest::Test
  def test_sample
    assert_equal "RUBY", "ruby".upcase
  end
end

# Minitestのメソッド
# assert_equal 期待値, 実際の値 > 期待値と実際の値が等しいかどうかを確認する
# assert a > aが真であるかどうかを確認する
# refute a > aが偽であるかどうかを確認する
