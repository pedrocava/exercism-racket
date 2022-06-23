#lang racket

(provide sum-of-squares square-of-sum difference)

(define (square-of-sum number) 
  (expt (for/sum ([i (in-range 0 (add1 number))]) i) 2))

(define (sum-of-squares number) 
  (for/sum ([i (in-range 0 (add1 number))]) (expt i 2)))

(define (difference number)
  (- (square-of-sum number) (sum-of-squares number)))
