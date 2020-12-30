(defsystem "cl-bowling"
  :version "0.1.0"
  :author "Bas Bossink <bas.bossink@gmail.com>"
  :license "BSD-2-Clause"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "A solution to the bowling kata in common-lisp"
  :in-order-to ((test-op (test-op "cl-bowling/tests"))))

(defsystem "cl-bowling/tests"
  :author "Bas Bossink <bas.bossink@gmail.com>"
  :license "BSD-2-Clause"
  :depends-on ("cl-bowling"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-bowling"
  :perform (test-op (op c) (symbol-call :rove :run c)))
