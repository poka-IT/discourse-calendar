# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/sa.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module SA # :nodoc:
    def self.defined_regions
      [:sa]
    end

    def self.holidays_by_month
      {
                2 => [{:mday => 22, :name => "Foundation Day", :regions => [:sa]}],
      4 => [{:mday => 9, :year_ranges => { :limited => [2024] },:name => "Festival of Breaking the Fast", :regions => [:sa]},
            {:mday => 10, :year_ranges => { :limited => [2024] },:name => "Second Day of the Festival of Breaking the Fast", :regions => [:sa]},
            {:mday => 11, :year_ranges => { :limited => [2024] },:name => "Third Day of the Festival of Breaking the Fast", :regions => [:sa]},
            {:mday => 21, :year_ranges => { :limited => [2023] },:name => "Festival of Breaking the Fast", :regions => [:sa]},
            {:mday => 22, :year_ranges => { :limited => [2023] },:name => "Second Day of the Festival of Breaking the Fast", :regions => [:sa]},
            {:mday => 23, :year_ranges => { :limited => [2023] },:name => "Third Day of the Festival of Breaking the Fast", :regions => [:sa]}],
      5 => [{:mday => 2, :year_ranges => { :limited => [2022] },:name => "Festival of Breaking the Fast", :regions => [:sa]},
            {:mday => 3, :year_ranges => { :limited => [2022] },:name => "Second Day of the Festival of Breaking the Fast", :regions => [:sa]},
            {:mday => 4, :year_ranges => { :limited => [2022] },:name => "Third Day of the Festival of Breaking the Fast", :regions => [:sa]}],
      6 => [{:mday => 15, :year_ranges => { :limited => [2024] },:name => "Day of Arafah", :regions => [:sa]},
            {:mday => 16, :year_ranges => { :limited => [2024] },:name => "Day 1 of Eid Al Adha", :regions => [:sa]},
            {:mday => 17, :year_ranges => { :limited => [2024] },:name => "Day 2 of Eid Al Adha", :regions => [:sa]},
            {:mday => 18, :year_ranges => { :limited => [2024] },:name => "Day 3 of Eid Al Adha", :regions => [:sa]}],
      9 => [{:mday => 23, :name => "Saudi National Day", :regions => [:sa]}]
      }
    end

    def self.custom_methods
      {
          
      }
    end
  end
end
