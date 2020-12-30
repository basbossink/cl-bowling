(defsystem "cl-bowling"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-bowling/tests"))))

(defsystem "cl-bowling/tests"
  :author ""
  :license ""
  :depends-on ("cl-bowling"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-bowling"
  :perform (test-op (op c) (symbol-call :rove :run c)))
