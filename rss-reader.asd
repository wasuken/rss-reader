;; (require \'asdf)
 
 (in-package :cl-user)
 (defpackage rss-reader-asd
 (:use :cl :asdf))
 (in-package :rss-reader-asd)
 
 (defsystem :rss-reader
 :version "1.0.0"
 :author "wasu"
 :license "MIT"
 :components ((:file "package")
 (:module "src" :components ((:file "rss-reader")))))

