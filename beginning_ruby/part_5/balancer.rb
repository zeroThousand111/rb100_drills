def balancer(string)
    string.count("(") == string.count(")") && brackets(string)
end

def brackets(string)
    string.delete!"^()"
    string.start_with?"("
end

p balancer("hi")      # true
p balancer("(hi")     # false
p balancer("(hi)")    # true

# # bonus
p balancer(")hi(")