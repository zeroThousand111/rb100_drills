contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Plumbing!
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts

# Alternative plumbing!
new_contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

new_contacts["Joe Smith"][:email] = contact_data.first.first
new_contacts["Joe Smith"][:address] = contact_data[0][1]
new_contacts["Joe Smith"][:phone] = contact_data.first.last

new_contacts["Sally Johnson"][:email] = contact_data.last.first
new_contacts["Sally Johnson"][:address] = contact_data[1][1]
new_contacts["Sally Johnson"][:phone] = contact_data.last.last

puts new_contacts

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }