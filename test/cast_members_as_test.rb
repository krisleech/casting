require 'test_helper'
require 'casting/core_ext/array'
require 'casting/core_ext/set'

describe Casting, '.cast_members_as' do
  it 'casts members of an Array' do
    collection = [BlockTestPerson.new, BlockTestPerson.new].cast_members_as(TestPerson::Greeter)
    assert collection[0].respond_to?(:greet)
    assert collection[1].respond_to?(:greet)
  end

  it 'casts members of a Set' do
    collection = Set.new([BlockTestPerson.new, BlockTestPerson.new]).cast_members_as(TestPerson::Greeter)
    assert collection.all? { |e| e.respond_to?(:greet) }
  end
end

