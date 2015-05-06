def conversation
   puts "Hello"
   yield
   puts "Goodbye"
end

conversation { puts "Good to meet you!"}