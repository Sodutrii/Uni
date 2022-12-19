--Aufgabe 1
--a)

data Rank = VII | VIII | IX | X | Jack | Queen | King | Ace
    deriving (Show, Eq, Ord)

--b)
data Suit = Clubs | Diamonds | Hearts | Spades
    deriving (Show, Eq)

--c)
data Card = Of Rank Suit
    deriving (Eq)

--d)
instance Show Card where
    show (Of r s) = show r ++ " of " ++ show s

--e)
instance Ord Card where
    (Of r1 s1) <= (Of r2 s2) = r1 <= r2

--f)
trumpCard :: Suit -> Card -> Card -> Card -> Card
trumpCard trumpSuit trumpCard card1 card2
  | trumpCard > card1 && trumpCard > card2 = trumpCard
  | card1 > card2 = card1
  | otherwise = card2

trick :: Suit -> Card -> Card -> Card
trick trumpSuit card1 card2 = trumpCard trumpSuit trumpCard card1 card2

--Aufgabe 2

--a)
odds :: Int -> [Int]
odds x  = [x | x <- [1..x] , x mod 2 == 1]

divs :: Int -> [Int] 
divs n = init ([ x | x <- [2..n], n mod x == 0])

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(a,b,c) | c <- [1..n], b <- [1..c-1], a <- [1..b-1], a^2 + b^2 == c^2]