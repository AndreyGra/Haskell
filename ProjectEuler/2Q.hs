fib::Int->Int->Int->[Int]
fib num1 num2 lim
        |(num1+num2) >= lim = [num2]
        |otherwise = num2:fib num2 (num1+num2) lim

main = print(sum (filter even (fib 1 2 4000000) ) )
