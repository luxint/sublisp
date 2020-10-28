# sublisp
Lisp without (most/some) parentheses

Do you also love lisp but even you get tired of all the parentheses, especially at the end of functions? Well here is the/a solution to that: sublisp! What it will do is replace all succcessive right parentheses with one parentheses and a subscripted count of all the successive parenthesis, See below example:

Before:
```
(define (fib n)
  (case n
    (0 0)
    (1 1)
    (true (+ (fib (- n 1)) 
             (fib (- n 2))))))
             
(define (fib-to n)
  (map (fn(x) (fib x)) 
       (sequence 1 n)))
```
After conversion:
```
(define (fib n)
  (case n
    (0 0)
    (1 1)
    (true (+ (fib (- n 1)₂ (fib (- n 2)₆

(define (fib-to n)
  (map (fn(x) (fib x)₂ (sequence 1 n)₃
```
Looks good!

