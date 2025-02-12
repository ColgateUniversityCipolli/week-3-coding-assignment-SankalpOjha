blakes.nums <- c(6, 10, 14, 15, 21,
                 22, 26, 33, 34, 35,
                 38, 39, 46, 51, 55,
                 57, 58, 62, 65, 69,
                 75, 77, 82, 85, 86,
                 87, 91, 93, 94, 95)

possible.nums <- 1:100

first.hundred.primes <- c()

#first find all the prime numbers up to 100
for(i in 1:length(possible.nums)){
  possible.nums.factors <- c()
  for(j in 1:i){
    if(i%%j == 0){ #checks for no remainder
      possible.nums.factors <- c(possible.nums.factors, j)
    }
  }
  if(length(possible.nums.factors) <= 2 
     & !(i %in% first.hundred.primes)){ #checks possible factors to be 2
                                        #and for the number to not be in the
                                        #vector of the first hunderd numbers
    first.hundred.primes <- c(first.hundred.primes, i)
  }
}

#find all the prime products up to 100 to compare with Blake's nums
under.hundred.prime.prods <- c()

for(i in 1:length(first.hundred.primes)){
  for(j in 1:length(first.hundred.primes)){
    product = first.hundred.primes[i] * first.hundred.primes[j]
    if(i != j){
      if(product < 100){
        under.hundred.prime.prods <- setdiff(c(under.hundred.prime.prods, product), 
                                             first.hundred.primes)
      }
    }
  }
}

setdiff(blakes.nums, under.hundred.prime.prods)

setdiff(under.hundred.prime.prods, blakes.nums)