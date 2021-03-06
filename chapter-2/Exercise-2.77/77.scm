(load "install-rectangular-package.scm")
(load "install-polar-package.scm")
(load "install-complex-package.scm")
(load "tag-contents.scm")
(load "apply-generic.scm")
(load "put-get.scm")
(load "generic-selector.scm")

(install-rectangular-package)
(install-polar-package)
(install-complex-package)

(load "../common/print.scm")
(print
 (magnitude (make-complex-from-real-imag 3 4))

 (add (make-complex-from-real-imag 3 4)
	  (make-complex-from-real-imag 3 4)))

#| output:
5
(complex rectangular 6 . 8)
|#