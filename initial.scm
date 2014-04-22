(define (require p)
  (if (not p) (amb)))

(define (an-element-of items)
  (require (not (null? items)))
  (amb (car items) (an-element-of (cdr items))))

(define (an-integer-starting-from n)
  (amb n (an-integer-starting-from (+ n 1))))

(define (even-sum-pair list1 list2)
  (let ((a (an-element-of list1))
        (b (an-element-of list2)))
    (require (even? (+ a b)))
    (list a b)))

(define (an-integer-between a b)
  (require (< a b))
  (amb a (an-integer-between (+ a 1) b)))

(define (a-pythagorean-triple-between low high)
  (let ((i (an-integer-between low high)))
    (let ((j (an-integer-between i high)))
      (let ((k (an-integer-between j high)))
        (require (= (+ (* i i) (* j j)) (* k k)))
        (list i j k)))))

(define (a-pythagorean-triple-for n)
  (let ((i (an-integer-between 1 n)))
    (let ((j (an-integer-between i n)))
      (require (= (+ (* i i) (* j j)) (* n n)))
      (list i j n))))

(define (a-pythagorean-triple)
  (a-pythagorean-triple-for (an-integer-starting-from 1)))

