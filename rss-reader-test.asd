;; (require \'asdf)
 
 (in-package :cl-user)
 (defpackage rss-reader-test-asd
 (:use :cl :asdf))
 (in-package :rss-reader-test-asd)
 
 (defsystem rss-reader-test
 :depends-on (:rss-reader)
 :version "1.0.0"
 :author "wasu"
 :license "MIT"
 :components ((:module "t" :components ((:file "rss-reader-test"))))
 :perform (test-op :after (op c)
 (funcall (intern #.(string :run) :prove) c)))

