;; -*- mode: scheme; indent-tabs-mode: nil -*-

(define (xexpr? x)
  (define (andmap p l)
    (cond ((null? l) #t)
          ((pair? l) (and (p (car l)) (andmap p (cdr l))))
          (else #f)))
  (define (attr? x)
    (and (pair? x) (symbol? (car x))
         (pair? (cdr x)) (string? (cadr x))
         (null? (cddr x))))

  (or (string? x)
      (symbol? x)
      (valid-char-integer? x)
      (and (pair? x)
           (symbol? (car x))
           (or (null? (cdr x))
               (and (pair? (cdr x))
                    (or (xexpr? (cadr x))
                        (andmap attr? (cadr x)))
                    (andmap xexpr? (cddr x)))))))

(define (write-named-escape v port)
  (write-char #\& port)
  (write        v port)
  (write-char #\; port))

(define (write-numeric-escape v port)
  (write-char #\& port)
  (write-char #\# port)
  (write        v port)
  (write-char #\; port))

(define (write-content x port)
  (for-each (lambda (c)
              (cond ((assq c escape-codes)
                     =>
                     (lambda (entry)
                       (let ((v (cadr entry)))
                         (cond ((symbol? v)
                                (write-named-escape v port))
                               ((number? v)
                                (write-numeric-escape v port))))))
                    (else
                     (write-char c port))))
            (string->list x)))

(define (write-xexpr x . args)

  ;; (pretty-print x)

  (let ((port (if (null? args)
                  (current-output-port)
                  (car args))))
    (cond
     ((string? x) (write-content x port))
     ((symbol? x) (write-named-escape x port))
     ((valid-char-integer? x) (write-numeric-escape x port))
     (else
      (let* ((tag (car x))
             (attrs+body (cond ((and (pair? (cdr x))
                                     (or (null? (cadr x))
                                         (and (pair? (cadr x))
                                              (pair? (car (cadr x))))))
                                (cons (cadr x) (cddr x)))
                               (else
                                (cons #f       (cdr x)))))
             (attrs (car attrs+body))
             (body  (cdr attrs+body)))
        (write-char #\< port)
        (write      tag port)
        (cond (attrs
               (for-each (lambda (attr)
                           (write-char #\space port)
                           (write          (car attr) port)
                           (write-char            #\= port)
                           (write-char            #\" port)
                           (write-content (cadr attr) port)
                           (write-char            #\" port))
                         attrs)))
        (cond ((null? body)
               (write-char #\/ port)
               (write-char #\> port))
              (else
               (write-char #\> port)
               (for-each (lambda (x) (write-xexpr x port)) body)
               (write-char #\< port)
               (write-char #\/ port)
               (write      tag port)
               (write-char #\> port))))))))

;; (Racket provides a few other constructors for Xexpr, namely the
;;  structures cdata, comment, and p-i (processing instruction), but I
;;  think for this one-off construction we can get by without that.)

;; A ValidCharInteger is exact-nonnegative-integer whose character
;; interpretation under UTF-8 is from the set (#x9 | #xA | #xD |
;; [#x20-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]), in
;; accordance with section 2.2 of the XML 1.1 spec.
(define (valid-char-integer? i)
  (and (number? i) (exact? i) (integer? i) (>= i 0)
       (or (= i #x9)
           (= i #xA)
           (= i #xD)
           (<= #x20 i #xD7FF)
           (<= #xE000 i #xFFFD)
           (<= #x10000 i #x10FFFF))))
