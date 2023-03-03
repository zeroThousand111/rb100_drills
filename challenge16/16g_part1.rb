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

Input:
  # What is the form of the data you want to transform?
  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
  contacts = {"Joe Smith" => {}}
  field = {:email, :address, :phone}
  
  For the sake of clarity, I will the call the hash value paired with the contact "name" key, contact_info.
  So the input is contacts = {"name" => "contact_info"}, where "contact_info" is itself a hash made up of three key-value pairs {:email => "something", :address => "something", :phone => "something"}
 
Output:
  # What is the form of the data you want the program to either return or print?
  - A hash within a hash populated with 3 key-value pairs that follow the format {:field => "item from contact_data"}
  - see test cases for what the output should look like
  - The format of what should be output will be:
    - {"Joe Smith" => {:email => "something", :address => "something", :phone => "something"}}

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
  - contact_info is a hash of key-value pairs 
    - {:field => "contact_data item"}
    - the keys are symbols, the values are strings
    - Each :field key is currently an item in an array called fields
    - Each :field key symbol will need to be copied into contact_info hash as a key
    - Each contact_data string item need to be copied into contact_info as a value
  
________________________________________________________________________________
*****Algorithm*****
________________________________________________________________________________
Step-by-step process (plaintext or pseudocode):
  # The logical process by which you intend to tackle the problem at hand
  1. Declare the initial starting information
  2. Create an array of contact_info keys i.e. fields = {:email, :address, :phone}
  3. Iterate over each "name"-{contact_info} pair in contacts
    4. Within each of the above (but there is just one) iterate over each field-contact_data pair
  4.Output contacts to show that it has been populated with the correct information
________________________________________________________________________________
Time to code!

N.B. The syntax to enter new information into a hash is hash_name[:key] = value

=end

# Declare initial arrays
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
 
# Create array of fields that are keys in contact_info
fields = [:email, :address, :phone]

# define a method to populate each key-value pair in contact_info
contacts.each do |name, contact_info|               # the parameters are the key-value pairs of contacts hash
    fields.each do |field|                          # the parameter is each field of fields array
        contact_info[field] = contact_data.shift    # the shift method progressively returns the first item in the array and then removes it
    end
end

# Output populated (mutated) contacts hash
puts contacts

