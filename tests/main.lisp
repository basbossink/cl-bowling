(defpackage cl-bowling/tests/main
  (:use :cl
        :cl-bowling
        :rove))
(in-package :cl-bowling/tests/main)

(deftest bowling-tests
  (testing "gutter game should score 0"
    (ok (= 0 (bowling (make-list 20 :initial-element 0)))))
  (testing "ones game should score 20"
    (ok (= 20 (bowling (make-list 20 :initial-element 1))))))
