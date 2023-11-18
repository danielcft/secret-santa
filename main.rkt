#!/usr/bin/env racket
#lang racket

(require srfi/1)

;;; draw secret santa from list of participants
(define draw
  (λ (p)
    (letrec ((F (first p))
             (D (λ (p)
                  (cond
                    ((null? (cdr p))
                     (list (list (first p) F)))
                    (else
                     (cons (list (first p) (second p)) (D (cdr p))))))))
      (D (shuffle p)))))

(define participants '("Alice" "Bob" "Eve"))
(draw participants)
