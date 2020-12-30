(defpackage cl-bowling
  (:use :cl)
  (:export :bowling))
(in-package :cl-bowling)

(defun bowling (rolls)
  (let ((plus #'+))
  (reduce plus rolls :initial-value 0)))
