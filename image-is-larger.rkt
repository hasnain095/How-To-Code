;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname image-is-larger) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; given two images, produce true if first image is larger than second image

(check-expect (is-img-larger? (rectangle 10 10 "solid" "blue") (rectangle 10 5 "solid" "blue")) true)
(check-expect (is-img-larger? (rectangle 10 10 "solid" "blue") (rectangle 10 10 "solid" "blue")) false)
(check-expect (is-img-larger? (rectangle 5 10 "solid" "blue") (rectangle 10 10 "solid" "blue")) false)

;(define (is-img-larger? IMAGE1 IMAGE2) true)    ;stub
;(define (is-img-larger? IMAGE1 IMAGE2)          ;template
; ... IMAGE1 IMAGE2)

(define (is-img-larger? IMAGE1 IMAGE2)
  (>
  (* (image-height IMAGE1) (image-width IMAGE1))
  (* (image-height IMAGE2) (image-width IMAGE2))))