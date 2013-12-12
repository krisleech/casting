class Set
  def cast_members_as(behaviour)
    map { |element| element.cast_as(behaviour) }
  end
end
