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