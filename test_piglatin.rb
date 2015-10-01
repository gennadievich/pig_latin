require 'minitest/autorun'
require_relative 'piglatin'

class TestPigLatin < MiniTest::Unit::TestCase
  def test_hello_becomes_ellohay
    assert_equal "igpay", translate("pig")
  end

  def test_banana_becomes_ananabay
    assert_equal "ananabay", translate("banana")
  end

  def test_trash_becomes_ashtray
    assert_equal "ashtray", translate("trash")
  end

  def test_happy_becomes_appyhay
    assert_equal "appyhay", translate("happy")
  end

  def test_duck_becomes_uckday
    assert_equal "uckday", translate("duck")
  end

  def test_glove_becomes_oveglay
    assert_equal "oveglay", translate("glove")
  end

  def test_eat_becomes_eatyay
    assert_equal "eatyay", translate("eat")
  end

  def test_omelet_becomes_omeletyay
    assert_equal "omeletyay", translate("omelet")
  end

  def test_are_becomes_areyay
    assert_equal "areyay", translate("are")
  end

  def test_i_becomes_iyay
    assert_equal "iyay", translate("i")
  end

  def test_yellow_becomes_ellowyay
    assert_equal "ellowyay", translate("yellow")
  end

  def test_my_becomes_ymay
    assert_equal "ymay", translate("my")
  end

  def test_rhythm_becomes_ythmrhay
    assert_equal "ythmrhay", translate("rhythm")
  end

  private

  def translate(word)
    PigLatin.translate(word)
  end
end
