r = c("ace", "king", "queen", "jack", "ten",
      "spade" ,"spade", "spade", "spade","spade")
r_s_f = matrix(data = r, nrow = 5)
  # = matrix(data=r, ncol=2) = [dim(r) = c(5,2)]
> r_s_f
[,1]         [,2]   
[1,] "ace"   "spade"
[2,] "king"  "spade"
[3,] "queen" "spade"
[4,] "jack"  "spade"
[5,] "ten"   "spade"

# list of card
> card = list("ace", "hearts", 1)
> card
[[1]]
[1] "ace"

[[2]]
[1] "hearts"

[[3]]
[1] 1

# data.frame of card
> df = data.frame(face = c("ace", "two", "six"),
+ suit = c("clubs", "clubs", "clubs"), value = c(1,2,3)
+ #stringsAsFactors = FALSE)
> df
face  suit value
1  ace clubs     1
2  two clubs     2
3  six clubs     3
 
 > typeof(df)
  [1] "list"
  > class(df)
  [1] "data.frame"
  > str(df)
  'data.frame':	3 obs. of  3 variables:
    $ face : Factor w/ 3 levels "ace","six","two": 1 3 2
  $ suit : Factor w/ 1 level "clubs": 1 1 1
  $ value: num  1 2 3

# read csv
> deck <- read.csv("~/R/win-library/3.6/R studying/R basics/deck.csv", stringsAsFactors=FALSE)
# save file copy
> write.csv(deck, file = "cards.csv", row.names = FALSE)

# return vaule ~ deck
> deck[c(1,1,1,1), c(1:3)]
face   suit value
1   king spades    13
1.1 king spades    13
1.2 king spades    13
1.3 king spades    13

> deck[c(F,T,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F),c(T,F,T)]
face value
2 queen    12

> deck[1, "value"]
[1] 13

> deal = function(df) {
  + print(df[1,])
  + }
> deal(deck)
face   suit value
1 king spades    13

# mix the deck
> shuffle = function(cards) {
  + random = sample(1:52, size = 52)
  + cards[random, ]
  + }
# and draw from shuffled deck
deck2 = shuffle(deck)
deal(deck2)
> deal(deck2)
face  suit value
18 nine clubs     9
> deal(deck2)
face  suit value
18 nine clubs     9
> deal(deck2)
face  suit value
18 nine clubs     9
> deal(deck2)
face  suit value
18 nine clubs     9
#...... instead
> deal(shuffle(deck))
face   suit value
5 nine spades     9
> deal(shuffle(deck))
face   suit value
42 jack hearts    11
> deal(shuffle(deck))
face   suit value
11 three spades     3
> deal(shuffle(deck))
face     suit value
32 eight diamonds     8

# $$$

lst = deck$value
> lst
$numbers
[1] 1 2

$logical
[1] TRUE

$strings
[1] "a" "b" "c"

> sum(lst$numbers)
[1] 3
> sum(lst[1])
Error in sum(lst[1]) : 인자의 'type' (list)이 올바르지 않습니다

> lst["numbers"]
$numbers
[1] 1 2
    # vs
> lst[["numbers"]]
[1] 1 2