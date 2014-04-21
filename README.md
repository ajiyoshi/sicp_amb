```
$ rlwrap gosh -I .
(load "amb")
#t
gosh> (driver-loop)

;;; Amb-Eval input:
(amb 1 2)

;;; Starting a new probrem
;;; Amb-Eval value:
1

;;; Amb-Eval input:
try-again

;;; Amb-Eval value:
2

;;; Amb-Eval input:
try-again

;;; There are no move values of
(amb 1 2)

;;; Amb-Eval input:

```
