# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/th.yaml
class ThDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_th
    assert_equal "วันขึ้นปีใหม่", (Holidays.on(Date.civil(20019, 1, 1), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันจักรี", (Holidays.on(Date.civil(2019, 4, 6), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันสงกรานต์", (Holidays.on(Date.civil(2019, 4, 13), [:th], [:informal])[0] || {})[:name]
assert_equal "วันสงกรานต์", (Holidays.on(Date.civil(2019, 4, 14), [:th], [:informal])[0] || {})[:name]
assert_equal "วันสงกรานต์", (Holidays.on(Date.civil(2019, 4, 15), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันเฉลิมพระชนมพรรษาสมเด็จพระเจ้าอยู่หัวมหาวชิราลงกรณ บดินทรเทพยวรางกูร", (Holidays.on(Date.civil(2019, 7, 28), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันเฉลิมพระชนมพรรษาสมเด็จพระนางเจ้าสิริกิติ์ พระบรมราชินีนาถในรัชกาลที่ ๙", (Holidays.on(Date.civil(2007, 8, 12), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันคล้ายวันสวรรคตพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดช บรมนาถบพิตร", (Holidays.on(Date.civil(2019, 10, 13), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันปิยมหาราช", (Holidays.on(Date.civil(2019, 10, 23), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันคล้ายวันเฉลิมพระชนมพรรษาพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดช บรมนาถบพิตร", (Holidays.on(Date.civil(2019, 12, 5), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันรัฐธรรมนูญ", (Holidays.on(Date.civil(2019, 12, 10), [:th], [:informal])[0] || {})[:name]

    assert_equal "วันสิ้นปี", (Holidays.on(Date.civil(2019, 12, 31), [:th], [:informal])[0] || {})[:name]

  end
end
