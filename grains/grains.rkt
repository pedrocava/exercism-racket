#lang racket

(provide square total)

(define (square n) 
  (expt 2 (sub1 n)))

(define (total [n 65])
  (sub1 (square n)))