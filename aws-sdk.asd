(defsystem "aws-sdk"
  :class :package-inferred-system
  :version "0.1.0"
  :author "Eitaro Fukamachi"
  :license "BSD 2-Clause"
  :description "AWS SDK for Common Lisp"
  :depends-on ("aws-sdk/main")
  :in-order-to ((test-op (test-op "aws-sdk/tests"))))

(defsystem "aws-sdk/tests"
  :depends-on (:aws-sdk :fiveam :iterate)
  :components ((:module "tests"
                :serial t
                :components ((:file "package")
                             (:file "main"))))
  :perform (test-op (o s)
                    (uiop:symbol-call :fiveam :run! 'aws-sdk/tests:all-tests)))
