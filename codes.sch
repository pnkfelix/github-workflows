;; Char -> Boolean
(define (must-escape-character? c)
  (case c
    ((#\< #\> #\& #\") #t)
    (else #f)))

;; From: http://www.w3.org/TR/html401/sgml/entities.html
(load "named-escape-codes.sch")
(define escape-codes
  (cons
   '(#\'          39) ;; &apos; not defined in HTML 4.01
   named-escape-codes))

;; See The HTML Coded Character Set
;; http://www.w3.org/MarkUp/html-spec/html-spec_13.html
(define coded-characters
  '((#\tab         9)
    (#\linefeed   10)
    (#\return     13)
    (#\space      32)
    (#\!          33)
    (#\"          34)
    (#\#          35)
    (#\$          36)
    (#\%          37)
    (#\&          38)
    (#\'          39)
    (#\(          40)
    (#\)          41)
    (#\*          42)
    (#\+          43)
    (#\,          44)
    (#\-          45)
    (#\.          46)
    (#\/          47)
    ...))
