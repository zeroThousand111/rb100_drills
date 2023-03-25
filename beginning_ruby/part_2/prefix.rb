# This is the original code
=begin
def prefix(str)
    "Mr " + str
end

name = 'joe'

prefix(name)

puts name
=end

# This is the follow-along tracking object ids

def prefix(str)
    "Mr " + str
end

name = 'joe'
puts "The value of name at the start is #{name} and its id is #{name.object_id}."

new_name = prefix(name)
puts "The value of new_name at the end is #{new_name} and its id is #{new_name.object_id}."

puts "The value of name at the end is #{name} and its id is #{name.object_id}."