import Prelude hiding (fst,snd)

fst::(a,b)->a
fst (x,y) = x

snd::(a,b)->b
snd (x,y) = y

mypair:: (a->b,a->y) -> a -> (b,y)
mypair (f,g) x = (f x, g x)

cross::(a->b,y->q) -> (a,y) -> (b,q)
cross(f,g) = mypair(f.fst,g.snd)

xcor::Floating a => a -> a
xcor = cos

ycor::Floating a => a -> a
ycor = sin 

main = do 
        print ( mypair (xcor,ycor) 1) 
        print ( cross (xcor,ycor) (1,1))  
