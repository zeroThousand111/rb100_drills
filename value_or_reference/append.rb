def append(s)
    s << '*'
end

t = 'abc'
puts "The value of t before the method is #{t}."
puts "The output of append(t) is #{append(t)}."
puts "And now the value of t is #{t}."