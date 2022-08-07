#lang racket

(provide isogram?)

(define (reduce-fun letters acc)
  (if (empty? letters)
    #t
    (if (member (first letters) acc) 
     #f
     (reduce-fun (rest letters) (append acc (list (first letters)))))))

(define (isogram? s)
  (reduce-fun (string->list (string-downcase s)) (list)))
