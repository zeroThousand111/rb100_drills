def balancer(string)
    open_count = string.count"("
    close_count = string.count")"
    p open_count == close_count
end

balancer("hi")      # true
balancer("(hi")     # false
balancer("(hi)")    # true

# bonus
# balancer(")hi(")