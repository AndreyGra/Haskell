import System.Random
import Data.Int
import Data.Bits

main::IO ()
main = do 
        num <- randomIO::IO Bool 
        print num
