(load "amb")

(define (open-with path f)
  (let ((port (open-input-file path)))
    (unwind-protect
      (f port)
      (close-input-port port))))

(map (^[exp] (ambeval exp
                      the-global-environment
                      (^[val next]
                        (user-print val))
                      (^[]
                        (announce-output ";;; There are no move values of")
                        (user-print exp))))
     (open-with "initial.scm" port->sexp-list))

(driver-loop)
