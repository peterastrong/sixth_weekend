# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def is_prime?(number)
  counter = 0 
  (2..(number-1)).each do |num|
    if ( number % num ) == 0
      counter += 1
    else
      counter = counter
    end 
  end 
  
  if counter > 0 
    return false
  else 
    return true
  end 
  
end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

def highest_prime_number_under(number)
  highest_prime_number_under = 0
  ary = (number-1).downto(2).to_a
  ary.each do |x|
    counter = 0 
    (2..(x-1)).each do |num|
      if ( x % num ) == 0
        counter += 1
      else
        counter = counter
      end 
    end 
    
    if counter > 0 
      highest_prime_number_under = 0
    else 
      highest_prime_number_under = x
      p  "The highest prime number under #{number} is " + x.to_s
      break
    end
  end 
end

p "testing is_prime?"

p " 7 is Prime?"
p is_prime?(7)
p "---"
p " 9 is Prime?"
p is_prime?(9)
p "---"
p " 11 is Prime?"
p is_prime?(11)
p "---"
p " 19 is Prime?"
p is_prime?(19)
p "---"

p "testing highest prime number under"
highest_prime_number_under(10)
highest_prime_number_under(12)
highest_prime_number_under(20)
highest_prime_number_under(19)




