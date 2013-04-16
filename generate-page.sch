(load "xexpr.sch")
(load "codes.sch")

(define (take n l)
  (if (zero? n) '()
      (cons (car l) (take (- n 1) (cdr l)))))

(define (drop n l)
  (if (zero? n) l
      (drop (- n 1) (cdr l))))

(define page
  `(html
    (head (title "Github workflows"))
    (body "Hello World."
          (table
           ,@(let ((codes named-escape-codes
                         ;; (take 50 named-escape-codes)
                          ))
               (map (lambda (entry)
                      (let ((code-string
                             (if (symbol? (cadr entry))
                                 (symbol->string (cadr entry))
                                 (number->string (cadr entry)))))
                        `(tr ;; (td ,code-string)
                          (td ,(string-append "&" code-string ";"))
                          (td ,(string (car entry)))
                          (td ,(cadr entry)))))
                    codes))))))


'(define codes-table
  `(table
    ,@(let loop ((i 0) (l '()))
        (cond ((< i 55295) ;; (< i 10000)
               (cons `(tr
                       (td ,(number->string i))
                       (td ,(if (valid-char-integer? i)
                                       i
                                       "n/a"))
                              (td ,(string (integer->char i))))
                     (loop (+ 1 i) l)))
              (else
               l)))))

(write (command-line-arguments)) (newline)
(let* ((args (command-line-arguments))
       (arg0 (vector-ref args 0))
       (arg1 (vector-ref args 1)))
  (herald "")
  (call-with-output-file arg1
    (lambda (out)
      (write-xexpr page out)
      (newline out))))
;; (write (call-with-output-string (lambda (s) (write-xexpr page s))))
;; (newline)
(exit)
