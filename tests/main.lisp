(defpackage cl-bowling/tests/main
  (:use #:cl
	#:cl-bowling
	#:rove))
(in-package #:cl-bowling/tests/main)

(defmacro bowling-test (description expected input)
  `(deftest ,(intern description)
     (testing "" (ok (= ,expected (bowling ',(eval input)))))))

(bowling-test "gutter game should score 0"
	      0 (make-list 20 :initial-element 0))
(bowling-test "ones game should score 20"
	      20 (make-list 20 :initial-element 1))
(bowling-test "a spare should score next roll as bonus"
	      29 (append '(5 5) (make-list 18 :initial-element 1)))
(bowling-test "a spare in the last frame should score next roll as bonus"
	      29 (append (make-list 19 :initial-element 1) '(9 1)))
(bowling-test "a strike should score next two rolls as bonus"
	      30 (cons 10 (make-list 18 :initial-element 1)))
(bowling-test "a strike in the last frame should score next two rolls as bonus"
	      30 (append (make-list 18 :initial-element 1) '(10 1 1)))
(bowling-test "a perfect game should score 300"
	      300 (make-list 12 :initial-element 10))
(bowling-test "some test game should score 167"
	      167 '(10 7 3 9 0 10 0 8 8 2 0 6 10 10 10 8 1))
(bowling-test "some other test game should score 132"
	      132 '(1 2 4 6 8 1 4 6 4 6 10 10 5 3 6 3 7 1))
