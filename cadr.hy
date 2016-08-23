
;;;;
;; @file cadr.hy
;; @description implementation of cadr in hy lang.
;;
;;;;


;; @description cadr = (car (cdr a))
(defmacro cadr [list] `(car (cdr ~list)))

;; @description cdar = (cdr (car a))
(defmacro cdar [list] `(cdr (car ~list)))

;; @descripton cddr = (cdr (cdr a))
(defmacro cddr [list] `(cdr (cdr ~list)))

;; @description caar (car (car a))
(defmacro caar [list] `(car (car ~list)))

;; @description caadr = (car (car (cdr a)))
(defmacro caadr [list] `(car (cadr ~list)))

;; @description cadar = (car (cdr (car a)))
(defmacro cadar [list] `(car (cdar ~list)))

;; @description caddr = (car (cdr (cdr a)))
(defmacro caddr [list] `(car (cddr ~list)))

;; @description cdddr = (cdr (cdr (cdr a)))
(defmacro cdddr [list] `(cdr (cddr ~list)))

;; @description cdaar = (cdr (car (car a)))
(defmacro cdaar [list] `(cdr (caar ~list)))

;; @description cdadr = (cdr (car (cdr a)))
(defmacro cdadr [list] `(cdr (cadr ~list)))

;; @description caaar = (car (car (car a)))
(defmacro caaar [list] `(car (caar ~list)))

;; @description caaaar = (car (car (car (car a))))
(defmacro caaaar [list] `(car (caaar ~list)))

;; @description caaadr = (car (car (car (cdr a))))
(defmacro caaadr [list] `(car (caadr ~list)))

;; @description caaddr = (car (car (cdr (cdr a))))
(defmacro caaddr [list] `(car (caddr ~list)))

;; @description caadar = (car (car (cdr (car a))))
(defmacro caadar [list] `(car (cadar ~list)))

;; @description cadddr = (car (cdr (cdr (cdr a))))
(defmacro cadddr [list] `(car (cdddr ~list)))

;; @description cadadr = (car (cdr (car (cdr a))))
(defmacro cadadr [list] `(car (cdadr ~list)))

;; @description cadaar = (car (cdr (car (car a))))
(defmacro cadaar [list] `(car (cdaar ~list)))

;; @description cdaaar = (cdr (car (car (car a))))
(defmacro cdaaar [list] `(cdr (caaar ~list)))

;; @description cddaar = (cdr (cdr (car (car a))))
(defmacro cddaar [list] `(cdr (cdaar ~list)))

;; @description cddadr = (cdr (cdr (car (cdr a))))
(defmacro cddadr [list] `(cdr (cdadr ~list)))

;; @description cddddr = (cdr (cdr (cdr (cdr a))))
(defmacro cddddr [list] `(cdr (cdddr ~list)))
