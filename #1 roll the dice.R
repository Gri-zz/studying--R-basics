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

# 