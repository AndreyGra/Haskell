import Graphics.Rendering.Chart.Easy
import Graphics.Rendering.Chart.Backend.Cairo

expSin :: Floating a => a -> a
expSin num = (sin (pi*num/4+1))/(2*sin(2*pi*num))

signal :: [Double] -> [(Double,Double)]
signal xs = [ (x, expSin x) | x <- xs]

cond :: (Double,Double) -> Bool
cond (x,y) = (round x) `mod` 100 == 25 

pointlist = signal[0,1..5000]

ampoints = filter cond pointlist

main = toFile def "example1_big.png" $ do
                 layout_title .= "Amplitude Modulation"
                 setColors [opaque blue, opaque orange]
                 plot (line "am" [pointlist] )
                 plot (points "am points"( ampoints ) )

