# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/federalreserve.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module FEDERALRESERVE # :nodoc:
    def self.defined_regions
      [:federalreserve]
    end

    def self.holidays_by_month
      {
                1 => [{:mday => 1, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "New Year's Day", :regions => [:federalreserve]},
            {:wday => 1, :week => 3, :name => "Birthday of Martin Luther King, Jr", :regions => [:federalreserve]}],
      2 => [{:wday => 1, :week => 3, :name => "Washington's Birthday", :regions => [:federalreserve]}],
      5 => [{:wday => 1, :week => -1, :name => "Memorial Day", :regions => [:federalreserve]}],
      7 => [{:mday => 4, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "Independence Day", :regions => [:federalreserve]}],
      9 => [{:wday => 1, :week => 1, :name => "Labor Day", :regions => [:federalreserve]}],
      10 => [{:wday => 1, :week => 2, :name => "Columbus Day", :regions => [:federalreserve]}],
      11 => [{:mday => 11, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "Veterans Day", :regions => [:federalreserve]},
            {:wday => 4, :week => 4, :name => "Thanksgiving Day", :regions => [:federalreserve]}],
      12 => [{:mday => 25, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "Christmas Day", :regions => [:federalreserve]}]
      }
    end

    def self.custom_methods
      {
          
      }
    end
  end
end
