=begin
________________________________________________________________________________
*****Problem*****
________________________________________________________________________________
Description:
> Challenge: In exercise 11, we manually set the contacts hash values one by one. 
> Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. 
> Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

> Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
> contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
> contacts = {"Joe Smith" => {}}

> As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

The difference between part 1 and part 2 (bonus part) is:
    1. There is one more name in the contacts hash ("Sally Johnson" in addition to "Joe Smith")
    2. The contact_data array is now a two-dimensional array, or nested arrays of contact_data in a parent array

Input:
  # What is the form of the data you want to transform?
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  field = {:email, :address, :phone}
  
  For the sake of clarity, I will the call the hash value paired with the contact "name" key, contact_info_hash.
  So the input is contacts = {"name" => {contact_info_hash}}, where contact_info_hash is itself a hash made up of three key-value pairs {:email => "something", :address => "something", :phone => "something"}
 
Output:
  # What is the form of the data you want the program to either return or print?
  - A hash within a hash populated with 3 key-value pairs that follow the format {:field => "item from contact_data"}
  - see test cases for what the output should look like
  - The format of what should be output will be:
    - {
    {"Joe Smith" => {:email => "something", :address => "something", :phone => "something"},
    {"Sally Johnson" => {:email => "something", :address => "something", :phone => "something"}  
      }

Explicit reqs:
  # What does the problem say about what you should do?
  - create an array for the fields that will form the keys within contact_info
  - use a method to populate the contacts, instead of a manual reassignment of values
  - consider using the Ruby Array instance methods #first and #shift in the solution
  
Implicit reqs:
  # What does the problem NOT say about what you need to have covered?
  - Use some built-in Ruby methods to solve the problem, not a custom method built from scratch
  - It's implied in the book material that Ruby solutions will use iteration rather than loops
________________________________________________________________________________
*****Examples/Test cases*****
________________________________________________________________________________
Test cases:
  # What are some examples of expected outputs for a given input? Be thorough
  # Expected output:
    #  {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}}

________________________________________________________________________________
*****Data structures*****
________________________________________________________________________________
Data manipulation strategy:
  # What forms do your data take on while the program is running?
  - contacts is a hash of key-value pairs 
    - {"name" => {contact_info}}
    - the key is a string, the value is a hash
  - contact_info_hash is a hash of key-value pairs 
    - {:field => "contact_data item"}
    - the keys are symbols, the values are strings
    - Each :field key is currently an item in an array called fields
    - Each :field key symbol will need to be copied into contact_info_hash as a key
    - Each contact_data string item need to be copied into contact_info_hash as a value
        - In part 2 each contact_data string item is in a nested array belonging to each contact name
  
________________________________________________________________________________
*****Algorithm*****
________________________________________________________________________________
Step-by-step process (plaintext or pseudocode):
  # The logical process by which you intend to tackle the problem at hand
  1. Declare the initial starting information
  2. Create an array of contact_info_hash keys i.e. fields = {:email, :address, :phone}
  3. Iterate over each "name"-{contact_info_hash} pair in contacts
    4. Within each of the above iterate over each field-contact_data pair with a method that can access the two-dimensional contact_data array
  4.Output contacts to show that it has been populated with the correct information
________________________________________________________________________________
Time to code!

N.B. The syntax to enter new information into a hash is hash_name[:key] = value

The Ruby lang documentation for Enumerable#each_with_index is here: https://docs.ruby-lang.org/en/2.7.0/Enumerable.html#method-i-each_with_index

=end

require "pry"

# Declare initial arrays
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
 
# Create array of fields that are keys in contact_info
fields = [:email, :address, :phone]

# define a method to populate each key-value pair in contact_info
contacts.each_with_index do |(name, contact_info_hash), idx |      
    fields.each do |field|
        contact_info_hash[field] = contact_data[idx].shift
        binding.pry
    end
end

# Output populated (mutated) contacts hash
puts contacts

