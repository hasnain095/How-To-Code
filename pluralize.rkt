;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pluralize) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; String -> String
;; Pluralize a given word
(check-expect (pluralize "a") "as")
(check-expect (pluralize "dog") "dogs")
(check-expect (pluralize "cat") "cats")

;(define (pluralize word) "words") ; stub

;(define (pluralize word) ;template
;  (... word))

(define (pluralize word)
  (string-append word "s"))
