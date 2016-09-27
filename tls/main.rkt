#lang r5rs

(#%provide #%module-begin
           ;(rename racket:module-begin #%module-begin)
           #%top-interaction
           #%app
           #%datum
           define
           lambda
           cond
           else
           and
           or
           quote
           car
           cdr
           cons
           null?
           atom?
           eq?
           add1
           sub1
           zero?
           number?
           )

;(#%require (rename racket/base racket:module-begin #%module-begin))

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))