(in-package #:rss-reader)

;;; **** This code corresponds only to rss 2.0. ****
(defun get-xml (url)
  (xmls:parse (dex:get url)))

;;; please good name:(
(defun base-get (xml-tree num)
  (mapcar #'(lambda (x) (nth 2 (nth num x)))
		  (nthcdr 12 (caddr xml-tree))))

(defun get-base-info (xml-tree)
  (let ((titles (base-get xml-tree 2))
		(links  (base-get xml-tree 4))
		(descs  (base-get xml-tree 10)))
	(mapcar #'(lambda (x y z) (list :|title| x :|link| y :|desc| z))
			titles
			links
			descs)))
