# defined_method
class String
  def self.add_new_method(name, &logic)
    send(:define_method, name) do |*args|
      puts "You have created a method #{name}, its define method"
      logic.call(*args  )
    end
  end
end

String.add_new_method('add_nubmbers') do |x, y|
  puts ' Logic goes here'
  puts x + y 
end

String.add_new_method('print_sourabh1')
'sourabh'.print_sourabh1

String.add_number()
