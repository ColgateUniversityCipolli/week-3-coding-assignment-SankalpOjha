nums <- c(6, 10, 14, 15, 21,
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



#Old code
factors <- factorize(nums)

#found code on stack overflow

for(i in 1:length(factors)){
  if(factors[[i]][3] != 1 | factors[[i]][4] != 1){
    not.same.index <- i
    not.same <- factors[i]
  }
    
}



#found code on stack overflow

possible.subs <- c()

#for(i in 1:length(possible.factors)){
i = 87
  if(possible.factors[[i]][2] != 1 | 
     possible.factors[[i]][3] != 1 | 
     possible.factors[[i]][4] != 1 |
     possible.factors[[i]][3] != "NA" |
     possible.factors[[i]][4] != "NA"){
    possible.subs <- c(possible.subs, possible.factors[i])
  }
  
#}