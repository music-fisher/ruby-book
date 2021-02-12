require 'minitest/autorun'
require './lib/team'
require './lib/bank'

class DeepFreezableTest < Minitest::Test
 def test_deep_freeze_to_array
  # 配列の値が正しいかどうか
  assert_equal ['Japan','US','India'] ,Team::COUNTRIES
  # 配列自身がfreezeされているかどうか。
  assert Team::COUNTRIES.frozen?
  # 配列の要素が全てfreezeされているか
  assert Team::COUNTRIES.all?{|coutry| coutry.frozen?}
 end
 
 def test_deep_freeze_to_hash
  # ハッシュの値は正しいか
   assert_equal(
     {'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
     Bank::CURRENCIES
     )
    # ハッシュ自身がfreezeされているか
    assert Bank::CURRENCIES.frozen?
    # ハッシュの要素が全てfreezeされているか
    assert Bank::CURRENCIES.all?{|key,value| key.frozen? && value.frozen?}
 end
end