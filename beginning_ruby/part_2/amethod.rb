=begin
def amethod(param)
    new_param = param + " world"
end

str = "hello"

amethod(str)
=end


def amethod(param)
    new_param = param << " world"
    puts "The value of param is #{param} and the object id is #{param.object_id}"
    puts "The value of new_param is #{new_param} and the object id is #{new_param.object_id}"
end

str = "hello"
puts "The starting value of str is #{str} and the id is #{str.object_id}."

amethod(str)

puts "The ending value of str is #{str} and the id is #{str.object_id}."