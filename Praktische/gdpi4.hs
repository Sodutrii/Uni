data Rank = VII | VIII | IX | X | Jack | Queen | King | Ace
    deriving (Show, Eq, Ord)


data Suit = Clubs | Diamonds | Hearts | Spades
    deriving (Show, Eq)

data Card = Of Rank Suit
    deriving Show

--big test