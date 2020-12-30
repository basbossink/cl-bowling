(defpackage cl-bowling
  (:use :cl)
  (:export :bowling))
(in-package :cl-bowling)

(defun bowling (rolls)
  (reduce #'+ rolls :initial-value 0))
