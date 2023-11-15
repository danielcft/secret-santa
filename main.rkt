#!/usr/bin/env racket
#lang racket

(require srfi/1)

(define data '(
               "Alice"
               "Bob"
               "Eve"
               ))

(define get-path
  (λ (l)
    (define last-to-assign (first l))
    (define get-path*
      (λ (l)
        (cond
          ((null? (cdr l))
           (list (list (first l) last-to-assign)))
          (else
           (cons (list (first l) (second l)) (get-path* (cdr l)))))))
    (get-path* l)))

  
(get-path (shuffle data))
