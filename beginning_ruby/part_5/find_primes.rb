def check_is_prime(n)
    (2..(n - 1)).each do | divisor|
        return false if n % divisor == 0
    end
end

def find_primes(x, y)
    range = Array(x..y)
    range.select! do |n|
        check_is_prime(n)      # check if n is prime in check_prime method
    end
    puts range.join(", ")
end


find_primes(3, 10) # 3, 5, 7