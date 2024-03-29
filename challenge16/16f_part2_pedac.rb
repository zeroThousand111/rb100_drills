=begin
________________________________________________________________________________
*****Challege 16 - Part 2*****
https://launchschool.com/books/ruby/read/intro_exercises
________________________________________________________________________________
Input:
  # What is the form of the data you want to transform?

  - I want to populate the value of a hash, contacts, (which is itself made up of a hash of key/value pairs) using an array of contact data
  - Is this hash-in-a-hash called a two-dimensional hash?
  - The hash is called "contacts"
  - The array of contact data is called "contact_data"
  - In part 2, "contact data" has more than one contact and so it is an array within-an-array aka a nested set of arrays aka a two-dimensional array structure.  The format of contact_data is [["email1", "address1", etc], ["email2", "address2", etc]]
  - The hash has a format of {"name" => "contact info"}.  "contact info" itself is a hash with a format of {:field => "contact_data item"}
  - Combined, the hash-in-a-hash data structure looks like: 
  {
  "name1" => {:contact_data_type1 => "contact_data item1", :contact_data_type2 => "contact_data item2", etc.}
  "name2" => {:contact_data_type1 => "contact_data item1", :contact_data_type2 => "contact_data item2", etc.}   
  }

Output:
  # What is the form of the data you want the program to either return or print?

  - I want the values of each name in the contacts hash to be populated with the data from the contact_data array, in other words the nested hash to be populated with key/value pairs {:field => "contact_data item"} where field is the type of contact data i.e. :email, :address and :phone
  - I want proof that my code has populated the value(s) of the contact hash.  I could do that with either a return or a print, it doesn't matter

Explicit reqs:
  # What does the problem say about what you should do?

  > Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

  > Note that this exercise is only concerned with dealing with 1 entry in the contacts hash
  Part 2 of the challenge is to deal with 
  
  > As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

  - The solution may make use of the array method shift.
    - "Removes the first element of self and returns it (shifting all other elements down by one). Returns nil if the array is empty."
  - The solution may make use of the array method first. 
    - "Returns the first element, or the first n elements, of the array. If the array is empty, the first form returns nil, and the second form returns an empty array"

Implicit reqs:
  # What does the problem NOT say about what you need to have covered?

  - Use some built-in Ruby methods to solve the problem, not a custom method built from scratch
  - It's implied in the book material that Ruby solutions will use iteration methods rather than loops
  - I know that the solution uses the each_with_index method
     - "each_with_index(*args) {|element, i| ..... } → self
     With a block given, calls the block with each element and its index; returns self:"
  - 
________________________________________________________________________________
*****Examples/Test cases*****
________________________________________________________________________________
Test cases:
  # What are some examples of expected outputs for a given input? Be thorough

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
________________________________________________________________________________
*****Data structures*****
________________________________________________________________________________
Data manipulation strategy:
  # What forms do your data take on while the program is running?
  
  - The empty contact hash is made up of key/value pairs that signify {"name of contact" => {contact information}}
  - The empty contact information is itself a hash made of symbol/string key/value pairs {:email=>"joe@email.com", :address=>"123 Main st.", etc}
  - Combined, the hash-in-a-hash data structure looks like: 
  {
  "name1" => {:contact_data_type1 => "contact_data item1", :contact_data_type2 => "contact_data item2", etc.}
  "name2" => {:contact_data_type1 => "contact_data item1", :contact_data_type2 => "contact_data item2", etc.}   
  }
  - There is no type of contact information (e.g. :email) specified yet, so that will need to be created, in a new array [:email, :address, :phone], which I will call "field"
  - If I use the shift method, then this will mutate the contacts_data array on each iteration to remove the first item, returning the next item on the following iteration
  - I don't have a use for the first method.  I would need to use another method to remove the first element of the contacts_data array in addition to first.  Something like the drop method.  The shift method does both at the same time.  But shift wouldn't be helpful if I wanted to keep contact_data un-mutated.
  
    - Part 2 differs from part 1 of challenge 16, because there is more than one name in the contacts hash.  
    - Why doesn't the solution to part 1 work for this hash that has more than one key/value pair in it?
    - It doesn't because the contacts_data array is a nested 2D array.  If it was one-dimensional array, with items in the correct order, we could use the algorithm from part 1.  But it isn't!  We need to change the algorithm to account for that (or change the contacts_data array).
________________________________________________________________________________
*****Algorithm*****
________________________________________________________________________________
Step-by-step process (plaintext or pseudocode):
  # The logical process by which you intend to tackle the problem at hand

  - Create a list (an array) of the type of contact data [:email, :address, :phone] called fields
  - Iterate over the fields with a method (e.g. each) to create a key/value pair for each contact data type with each item from the contact_data array from INSIDE EACH NESTED ARRAY
    - 
    - The output of this method will form the keys and values of every named contact in the contacts hash
    - The output will be formatted {:field1 => "contact_data item1", :field2 => "contact_data item2", etc.} for every named contact
  - Iterate over the name keys in the outer contact hash to make sure the above step happens for every contact
   - This must happen for every contact in the contacts hash (i.e. "Joe Smith" and "Sally Johnson")
  - Print or return the contacts hash to confirm the method has populated the hash the way we wanted it to
________________________________________________________________________________
Time to code!

N.B. The syntax to add key/value pairs to a hash is: hash_name[:key] = value

=end

# initial information
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# create an array for fields
fields = [:email, :address, :phone]

# create a method that does what we want it to (multi-line block version)
# this method iterates over every name key in the contacts hash, but we only have one to worry about
contacts.each_with_index do |(name, hash), index_of_contact_data_array|           # iterate over each name in the contacts hash
# this method iterates over each field in the field array and populates it with a value from contacts_data
  fields.each do |field|                # iterate over each field in the fields array
    hash[field] = contact_data[index_of_contact_data_array].shift    # the standard syntax for creating key/value pairs (key is :field, value is contact_data) but using the next item in the contact_data array on each iteration with the shift method
  end
end

puts contacts                           # IT WORKED, BUT I STILL DON'T REALLY KNOW WHY!!!!

# reset contacts with a blank hash again ready for the next version of the solution
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# reset mutated contact_data array
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
p contacts                              # Check contacts hash is empty again
p contact_data                          # Check contact_data has been repopulated again

# create a method that does what we want it to (single-line block version)
contacts.each_with_index {|(name, hash), index_of_contact_data_array| fields.each {|field| hash[field] = contact_data[index_of_contact_data_array].shift}}

puts contacts                           # IT ALSO WORKED!!!!