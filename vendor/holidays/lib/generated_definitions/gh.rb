# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/gh.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module GH # :nodoc:
    def self.defined_regions
      [:gh]
    end

    def self.holidays_by_month
      {
                0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Good Friday", :regions => [:gh]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Easter Monday", :regions => [:gh]}],
      1 => [{:mday => 1, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "New Year's Day", :regions => [:gh]},
            {:mday => 7, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "Constitution Day", :regions => [:gh]}],
      3 => [{:mday => 6, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "Independence Day", :regions => [:gh]}],
      4 => [{:function => "eid_ul_fitr(year)", :function_arguments => [:year], :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "Eid-ul-Fitr", :regions => [:gh]}],
      5 => [{:mday => 1, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "May Day (Workers' Day)", :regions => [:gh]},
            {:mday => 25, :type => :informal, :name => "African Union Day", :regions => [:gh]}],
      6 => [{:mday => 28, :year_ranges => { :limited => [2023] },:name => "Eid-ul-Adha", :regions => [:gh]}],
      7 => [{:mday => 1, :type => :informal, :name => "Republic Day", :regions => [:gh]}],
      8 => [{:mday => 4, :year_ranges => { :from => 2019 },:observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "Founders' Day", :regions => [:gh]}],
      9 => [{:mday => 21, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "Kwame Nkrumah Memorial Day", :regions => [:gh]}],
      12 => [{:wday => 5, :week => 1, :observed => "to_monday_if_weekend(date)", :observed_arguments => [:date], :name => "Farmer's Day", :regions => [:gh]},
            {:mday => 25, :name => "Christmas Day", :regions => [:gh]},
            {:mday => 26, :observed => "to_weekday_if_boxing_weekend(date)", :observed_arguments => [:date], :name => "Boxing Day", :regions => [:gh]}]
      }
    end

    def self.custom_methods
      {
          "eid_ul_fitr(year)" => Proc.new { |year|
eid_ul_fitr_dates = {
  '2023' => Date.civil(2023, 4, 22),
  '2024' => Date.civil(2024, 4, 11)
}
eid_ul_fitr_dates[year.to_s]
},


      }
    end
  end
end
