=begin
________________________________________________________________________________
*****Challege 16 - Part 1*****
https://launchschool.com/books/ruby/read/intro_exercises
________________________________________________________________________________
Input:
  # What is the form of the data you want to transform?

  - I want to populate the value of a hash (which is itself a hash of key/value pairs) using an array of contact_data
  - Is this hash in a hash called a two-dimensional hash?

Output:
  # What is the form of the data you want the program to either return or print?

  - I want proof that my code has populated the value(s) of the contact hash
  - I could do that with either a return or a print, it doesn't matter

Explicit reqs:
  # What does the problem say about what you should do?

  > Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

  > Note that this exercise is only concerned with dealing with 1 entry in the contacts hash

  - The solution may make use of the array method shift.
    - Removes the first element of self and returns it (shifting all other elements down by one). Returns nil if the array is empty.
  - The solution may make use of the array method first. 
    - Returns the first element, or the first n elements, of the array. If the array is empty, the first form returns nil, and the second form returns an empty array

Implicit reqs:
  # What does the problem NOT say about what you need to have covered?

  - Use some built-in Ruby methods to solve the problem, not a custom method built from scratch
  - It's implied in the book material that Ruby solutions will use iteration methods rather than loops

________________________________________________________________________________
*****Examples/Test cases*****
________________________________________________________________________________
Test cases:
  # What are some examples of expected outputs for a given input? Be thorough

  # Expected output:
  #  { "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}}
________________________________________________________________________________
*****Data structures*****
________________________________________________________________________________
Data manipulation strategy:
  # What forms do your data take on while the program is running?

  - The empty contact hash is made up of key/value pairs that signify {"name of contact" => {contact information}}
  - The empty contact information is itself a hash made of symbol/string key/value pairs {:email=>"joe@email.com", :address=>"123 Main st.", etc}
  - There is no type of contact information (e.g. :email) specified yet, so that will need to be created, in a new array [:email, :address, :phone]
  - If I use the shift method, then this will mutate the contacts_data array on each iteration to remove the first item, returning the next item on the following iteration
________________________________________________________________________________
*****Algorithm*****
________________________________________________________________________________
Step-by-step process (plaintext or pseudocode):
  # The logical process by which you intend to tackle the problem at hand

  - Create an array of the fields in the contact data type [:email, :address, :phone]
  - Iterate over the fields with a method (e.g. each) to create a key/value pair for each contact data type
    - The output of this method will form the keys and values of every named contact in the contacts hash
  - Iterate over the name keys to make sure the above step happens for every contact
   - This is simple, because the challenge only gives us one contact ("Joe Smith")
  - Print or return the contacts hash to confirm the method has populated the hash the way we wanted it to
________________________________________________________________________________
Time to code!
=end

# initial information
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

# create an array for fields
fields = [:email, :address, :phone]

# create a method that does what we want it to (multi-line block version)

# this method iterates over every name key in the contacts hash, but we only have one to worry about
contacts.each do |name, hash|           # iterate over each name in the contacts hash (but there is only one)
# this method iterates over each field in the field array and populates it with a value from contacts_data
  fields.each do |field|                # iterate over each field in the fields array
    hash[field] = contact_data.shift    # the standard syntax for creating key/value pairs (key is :field, value is contact_data) but using the next item in the contact_data array on each iteration with the shift method
  end
end

puts contacts                           # IT WORKED!!!!

# reset contacts with a blank hash again ready for the next version of the solution
contacts = {"Joe Smith" => {}}
# reset mutated contact_data array
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
p contacts                              # Check contacts hash is empty again
p contact_data                          # Check contact_data has been repopulated again

# create a method that does what we want it to (single-line block version)
contacts.each {|name, hash| fields.each {|field| hash[field] = contact_data.shift}}

puts contacts                           # IT ALSO WORKED!!!!