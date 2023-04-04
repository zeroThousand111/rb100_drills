def countdown(n)
    if n == 0
        puts "ZERO!"
    else 
        puts n
        countdown(n-1)
    end
end

countdown(100)