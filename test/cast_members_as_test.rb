require 'test_helper'
require 'casting/core_ext/array'

describe Casting, '.cast_members_as' do
  it 'casts members of collection' do
    collection = [BlockTestPerson.new, BlockTestPerson.new].cast_members_as(TestPerson::Greeter)
    assert collection[0].respond_to?(:greet)
    assert collection[1].respond_to?(:greet)
  end
end

