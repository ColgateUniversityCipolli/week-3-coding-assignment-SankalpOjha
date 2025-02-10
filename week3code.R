library("sfsmisc")

nums <- c(6, 10, 14, 15, 21,
          22, 26, 33, 34, 35,
          38, 39, 46, 51, 55,
          57, 58, 62, 65, 69,
          75, 77, 82, 85, 86,
          87, 91, 93, 94, 95)


factors <- factorize(nums)

#found code on stack overflow

for(i in 1:length(factors)){
  if(factors[[i]][3] != 1 | factors[[i]][4] != 1){
    not.same.index <- i
    not.same <- factors[i]
  }
    
}

possible.nums <- 1:99

possible.factors <- factorize(possible.nums)

#found code on stack overflow

possible.subs <- c()

#for(i in 1:length(possible.factors)){
i = 89
  if(possible.factors[[i]][2] != 1 | 
     possible.factors[[i]][3] != 1 | 
     possible.factors[[i]][4] != 1){
    possible.subs <- c(possible.subs, possible.factors[i])
  }
  
#}