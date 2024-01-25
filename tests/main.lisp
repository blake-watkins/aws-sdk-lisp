(in-package :aws-sdk/tests)

(def-suite all-tests)

(in-suite all-tests)

(defun test-aws-sdk ()
  (run! 'all-tests))
