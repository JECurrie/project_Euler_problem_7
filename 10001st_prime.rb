#10001st prime
#Problem 7
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

#helper function:
def is_prime(num) 
  if num <= 1
    return false
  end

  if num == 2
    return true
  end

  if num % 2 == 0
    return false
  end

  counter = 3

  while counter * counter <= num
    if num % counter == 0
		  return false
    else 
      counter +=2
    end
  end

  return true
end

def it_is_prime(num)
	numPrimes = 1
	num = 1
	 
	while numPrimes < 10001
	  num = num + 2
	  if is_prime(num)
	      numPrimes += 1
	  end
	end
	puts num
end	

puts it_is_prime(2)
#puts isPrime(10001) 