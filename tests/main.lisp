(defpackage cl-bowling/tests/main
  (:use :cl
        :cl-bowling
        :rove))
(in-package :cl-bowling/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-bowling)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
