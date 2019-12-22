# roll the dice

roll = function() {
  die = 1:6
  dice = sample(die, size=2, replace=TRUE)
  sum(dice)
}
  ## sample(x, size, replace, prob)
      ## prob -> weight

# roll the bones
roll2 = function(bones) {
  dice = sample(bones, size = 2, replace = TRUE)
  sum(dice)
}
  ## roll2() -> error
  ## bones -> bones = ?:? ~ roll2() -> works
    ## ?:? = default (no input ~ ?:? is input)

# aplication : random seq maker
> random_seq = function(seq_length) {
  base = c("A", "T", "G", "C")
  seq = sample(x = base, size = seq_length, replace = TRUE)
  print(seq)
}
> random_seq(10)
[1] "G" "C" "T" "G" "C" "G" "T" "T" "A" "C"

# dice normal distribution : roll 10000 times!!!!!
> rolls = replicate(10000, roll())
> qplot(rolls, binwidth = 1)


### attribute of object ###

# name the dice
> names(die)
NULL
> names(die) = c("one", "two", "three", "four", "five", "six")
> attributes(die)
$names
[1] "one"   "two"   "three" "four"  "five"  "six"

> die
one   two three  four  five   six 
1     2     3     4     5     6 

> die + 1
one   two three  four  five   six 
2     3     4     5     6     7 
  # name is not affected

# dice dimension
> dim(die)
NULL
> dim(die) = c(2,3)
> die
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

  ## dice hypercube
  > dim(die) = c(1,2,3)
  > die
  , , 1
  
  [,1] [,2]
  [1,]    1    2
  
  , , 2
  
  [,1] [,2]
  [1,]    3    4
  
  , , 3
  
  [,1] [,2]
  [1,]    5    6


# die matrix
> m = matrix(die, nrow = 2)
> m
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
  # die again matrix
  > m = matrix(die, nrow = 2, byrow=TRUE)
  > m
  [,1] [,2] [,3]
  [1,]    1    2    3
  [2,]    4    5    6