(in-package :cl-user)
(defpackage rss-reader-test
  (:use :cl :prove :rss-reader))
(in-package #:rss-reader-test)
(plan 1)
(subtest "test xml-items"
  (let ((result (rss-reader:get-base-info
				 (rss-reader:get-xml "https://diyopt.net/feed/"))))
	(isnt nil
		  (getf (car result) :|title|))
	(isnt nil
		  (getf (car result) :|link|))
	(isnt nil
		  (getf (car result) :|desc|))))
