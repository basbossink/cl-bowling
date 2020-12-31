(defpackage cl-bowling
  (:use #:cl)
  (:export #:bowling))
(in-package #:cl-bowling)

(defconstant +number-of-pins+ 10)

(defun strikep (first-roll)
  (eql +number-of-pins+ first-roll))

(defun spare-or-strike-p (first-roll second-roll)
  (or (strikep first-roll)
      (eql +number-of-pins+ (+ first-roll second-roll))))

(defun score-frame (accumulator first second &optional third)
  (let ((bonus (if (spare-or-strike-p first second)
                   (or third 0)
                   0)))
    (+ accumulator first second bonus)))

(defun bowling-score-acc (accumulator rolls)
  (destructuring-bind (first second &optional third &rest rest) rolls
    (let ((new-accumalator (score-frame accumulator first second third)))
      (if (not rest)
          new-accumalator
          (bowling-score-acc new-accumalator
                             (if (strikep first)
                                 (cdr rolls)
                                 (cddr rolls)))))))

(defun bowling (rolls)
  (bowling-score-acc 0 rolls))
