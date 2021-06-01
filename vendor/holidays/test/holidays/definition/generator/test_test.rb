# Heh at this file name
require File.expand_path(File.dirname(__FILE__)) + '/../../../test_helper'

require 'holidays/definition/generator/test'
require 'holidays/definition/entity/test'

class TestGeneratorTests < Test::Unit::TestCase
  def setup
    @module_name = "Test"
    @files = ["file1.rb"]
    @tests = [
      Holidays::Definition::Entity::Test.new(
        :dates => [DateTime.parse("2016-01-01")],
        :regions => [:test],
        :name => "Test Holiday",
      ),
    ]

    @decorator = mock()

    @generator = Holidays::Definition::Generator::Test.new(@decorator)
  end

  def test_generate_tests_raises_error_if_module_name_is_invalid
    assert_raises ArgumentError do
      @generator.call(nil, @files, @tests)
    end

    assert_raises ArgumentError do
      @generator.call("", @files, @tests)
    end
  end

  def test_generate_tests_raises_error_if_files_is_invalid
    assert_raises ArgumentError do
      @generator.call(@module_name, nil, @tests)
    end

    assert_raises ArgumentError do
      @generator.call(@module_name, "", @tests)
    end
  end

  def test_generate_tests_raises_error_if_tests_are_missing
    assert_raises ArgumentError do
      @generator.call(@module_name, @files, nil)
    end
  end

  def test_generate_source_from_single_test
    @decorator.expects(:call).with(@tests.first).returns("test")

    expected = <<-EOT
# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: #{@files.join(', ')}
class #{@module_name.to_s.capitalize}DefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_#{@module_name.to_s.downcase}
    test
  end
end
EOT

    assert_equal(expected, @generator.call(@module_name, @files, @tests))
  end

  def test_generate_source_from_multiple_tests
    @tests = [
      Holidays::Definition::Entity::Test.new(
        :dates => [DateTime.parse("2016-01-01")],
        :regions => [:test],
        :name => "Test Holiday",
      ),
      Holidays::Definition::Entity::Test.new(
        :dates => [DateTime.parse("2016-02-01")],
        :regions => [:test2],
        :name => "Test Holiday2",
      ),
      Holidays::Definition::Entity::Test.new(
        :dates => [DateTime.parse("2016-03-01")],
        :regions => [:test3],
        :name => "Test Holiday3",
      ),
    ]

    @decorator.expects(:call).with(@tests[0]).returns("test")
    @decorator.expects(:call).with(@tests[1]).returns("test2")
    @decorator.expects(:call).with(@tests[2]).returns("test3")

    expected = <<-EOT
# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: #{@files.join(', ')}
class #{@module_name.to_s.capitalize}DefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_#{@module_name.to_s.downcase}
    test
    test2
    test3
  end
end
EOT

    assert_equal(expected, @generator.call(@module_name, @files, @tests))
  end
end
