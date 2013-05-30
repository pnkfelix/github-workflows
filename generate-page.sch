;; -*- mode: scheme; indent-tabs-mode: nil -*-
(load "xexpr.sch")
(load "codes.sch")

(define (take n l)
  (if (zero? n) '()
      (cons (car l) (take (- n 1) (cdr l)))))

(define (drop n l)
  (if (zero? n) l
      (drop (- n 1) (cdr l))))

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

;; (write (command-line-arguments)) (newline)
(let* ((args (command-line-arguments))
       (arg0 (vector-ref args 0))
       (arg1 (vector-ref args 1))
       (arg2 (vector-ref args 2))
       (this-script arg0)
       (input-file arg1)
       (output-file arg2)
       )
  (herald "")
  (call-with-input-file input-file
    (lambda (in)
      (call-with-output-file output-file
        (lambda (out)
          (let* ((input (read in))
                 ;; (_ (begin (pretty-print `(input: ,input)) (newline)))
                 (page (eval input)))
            (write-xexpr page out)
            (newline out)))))))

(exit)
