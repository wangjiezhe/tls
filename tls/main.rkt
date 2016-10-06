#lang r5rs

(#%provide (rename module-begin #%module-begin)
           #%app #%datum #%top #%top-interaction  ; for program
           define lambda cond else and or quote   ; basic keywords
           car cdr cons null?                     ; for list
           atom? eq?                              ; for atom
           add1 sub1 zero? number?                ; for number
           quasiquote unquote list                ; keywords for help
           )

(#%require (only racket/base #%printing-module-begin module))

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define-syntax module-begin
  (syntax-rules ()
    ((_ . forms)
     (#%printing-module-begin
      (module configure-runtime '#%kernel
        (print-as-expression #f)
        (print-pair-curly-braces  #t)
        (print-mpair-curly-braces #f))
      . forms))))
