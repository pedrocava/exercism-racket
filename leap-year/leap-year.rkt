#lang racket

(provide leap-year?)

(define (leap-year? year)
  (if (equal? (remainder year 4) 0) 
    (if (equal? (remainder year 100) 0) 
      (if (equal? (remainder year 400) 0)
        #t
        #f)
      #t)
    #f)
  )