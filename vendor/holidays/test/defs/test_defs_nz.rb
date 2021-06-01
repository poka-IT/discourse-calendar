# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/nz.yaml
class NzDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_nz
    assert_equal "New Year's Day", (Holidays.on(Date.civil(2007, 1, 1), [:nz], [:informal])[0] || {})[:name]

    assert_equal "Day after New Year's Day", (Holidays.on(Date.civil(2007, 1, 2), [:nz], [:informal])[0] || {})[:name]

    assert_equal "Waitangi Day", (Holidays.on(Date.civil(2007, 2, 6), [:nz], [:informal])[0] || {})[:name]

    assert_equal "Good Friday", (Holidays.on(Date.civil(2007, 4, 6), [:nz], [:informal])[0] || {})[:name]

    assert_equal "Easter Monday", (Holidays.on(Date.civil(2007, 4, 9), [:nz], [:informal])[0] || {})[:name]

    assert_equal "ANZAC Day", (Holidays.on(Date.civil(2007, 4, 25), [:nz], [:informal])[0] || {})[:name]

    assert_equal "Christmas Day", (Holidays.on(Date.civil(2007, 12, 25), [:nz], [:informal])[0] || {})[:name]

    assert_equal "Boxing Day", (Holidays.on(Date.civil(2007, 12, 26), [:nz], [:informal])[0] || {})[:name]

    assert_equal "ANZAC Day", (Holidays.on(Date.civil(2015, 4, 25), [:nz])[0] || {})[:name]

    assert_equal "ANZAC Day", (Holidays.on(Date.civil(2015, 4, 27), [:nz], [:observed])[0] || {})[:name]

    assert_equal "ANZAC Day", (Holidays.on(Date.civil(2016, 4, 25), [:nz])[0] || {})[:name]

    assert_equal "ANZAC Day", (Holidays.on(Date.civil(2016, 4, 25), [:nz], [:observed])[0] || {})[:name]

    assert_equal "Waitangi Day", (Holidays.on(Date.civil(2015, 2, 6), [:nz])[0] || {})[:name]

    assert_equal "Waitangi Day", (Holidays.on(Date.civil(2015, 2, 6), [:nz], [:observed])[0] || {})[:name]

    assert_equal "Waitangi Day", (Holidays.on(Date.civil(2016, 2, 6), [:nz])[0] || {})[:name]

    assert_equal "Waitangi Day", (Holidays.on(Date.civil(2016, 2, 8), [:nz], [:observed])[0] || {})[:name]

    assert_equal "Nelson Anniversary Day", (Holidays.on(Date.civil(2016, 2, 1), [:nz_ne], [:observed])[0] || {})[:name]

    assert_equal "Nelson Anniversary Day", (Holidays.on(Date.civil(2017, 1, 30), [:nz_ne], [:observed])[0] || {})[:name]

    assert_equal "Nelson Anniversary Day", (Holidays.on(Date.civil(2018, 1, 29), [:nz_ne], [:observed])[0] || {})[:name]

    assert_equal "Nelson Anniversary Day", (Holidays.on(Date.civil(2019, 2, 4), [:nz_ne], [:observed])[0] || {})[:name]

    assert_equal "Taranaki Anniversary Day", (Holidays.on(Date.civil(2016, 3, 14), [:nz_ta], [:observed])[0] || {})[:name]

    assert_equal "Taranaki Anniversary Day", (Holidays.on(Date.civil(2017, 3, 13), [:nz_ta], [:observed])[0] || {})[:name]

    assert_equal "Taranaki Anniversary Day", (Holidays.on(Date.civil(2018, 3, 12), [:nz_ta], [:observed])[0] || {})[:name]

    assert_equal "Taranaki Anniversary Day", (Holidays.on(Date.civil(2019, 3, 11), [:nz_ta], [:observed])[0] || {})[:name]

  end
end
