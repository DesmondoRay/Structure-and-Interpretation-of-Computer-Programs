(define make-segment cons)
(define start-segment car)
(define end-segment cdr)

(define make-point cons)
(define x-point car)
(define y-point cdr)

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment segment)
  (make-point (/ (+ (x-point(start-segment segment))
                    (x-point(end-segment segment)))
                 2)
              (/ (+ (y-point(start-segment segment))
                    (y-point(end-segment segment)))
                 2)))

;; test:
(define point-1 (make-point 10 10))
(define point-2 (make-point 100 80))
(define segment (make-segment point-1 point-2))

(print-point point-1)
(print-point point-2)
(print-point (midpoint-segment segment))

#| output:
(10,10)
(100,80)
(55,45)
|#