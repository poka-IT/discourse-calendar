# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/nyse.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module NYSE # :nodoc:
    def self.defined_regions
      [:nyse]
    end

    def self.holidays_by_month
      {
                0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Good Friday", :regions => [:nyse]}],
      1 => [{:mday => 1, :observed => "to_monday_if_sunday(date)", :observed_arguments => [:date], :name => "New Year's Day", :regions => [:nyse]},
            {:wday => 1, :week => 3, :name => "Martin Luther King, Jr. Day", :regions => [:nyse]}],
      2 => [{:wday => 1, :week => 3, :name => "Presidents' Day", :regions => [:nyse]}],
      5 => [{:wday => 1, :week => -1, :name => "Memorial Day", :regions => [:nyse]}],
      7 => [{:mday => 4, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "Independence Day", :regions => [:nyse]}],
      9 => [{:wday => 1, :week => 1, :name => "Labor Day", :regions => [:nyse]}],
      11 => [{:wday => 4, :week => 4, :name => "Thanksgiving", :regions => [:nyse]}],
      12 => [{:mday => 25, :observed => "to_weekday_if_weekend(date)", :observed_arguments => [:date], :name => "Christmas Day", :regions => [:nyse]}]
      }
    end

    def self.custom_methods
      {
          
      }
    end
  end
end
