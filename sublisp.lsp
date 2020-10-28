(define (down txt)
  (replace {\)\)+} 
             txt 
             (string ")" (char (+ 0x2080 (length $it)₄
             0)₂

(define (up txt)
  (replace {\)[₂|₃|₄|₅|₆|₇|₈|₉]} 
            txt 
            (dup ")" (- (char ($it 1)₂ 0x2080)₂ 
            2048)₂
             
(define (down-file file)
  (write-file file 
    (down (read-file file)₄

(define (up-file file)
  (write-file file 
    (up (read-file file)₄    






