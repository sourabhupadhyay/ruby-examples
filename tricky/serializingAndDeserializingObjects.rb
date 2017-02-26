require 'yaml'

# First dummy class
class A
  def initialize(string, number)
    @string = string
    @number = number
  end

  def to_s
    "In A:\n   #{@string}, #{@number}\n"
  end
end

# Second dummy class
class B
  def initialize(number, a_object)
    @number = number
    @a_object = a_object
  end

  def to_s
    "In B: #{@number} \n  #{@a_object.to_s}\n"
  end
end

# Third dummy class
class C
  def initialize(b_object, a_object)
    @b_object = b_object
    @a_object = a_object
  end

  def to_s
    "In C:\n #{@a_object} #{@b_object}\n"
  end
end

a = A.new('hello world', 5)
b = B.new(7, a)
c = C.new(b, a)

serialized_object = YAML.dump(c)
puts serialized_object

puts '-------------------'

puts YAML::load(serialized_object)
