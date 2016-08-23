(require hytest)
(import hytest)

(require cadr)
(import cadr)

(test-set cadr
  (test = (cadr [1 2 3]) 2)
  (test = (cdar [[0 1 2] [2 3 4]]) [1 2])
  (test = (caar [[0 1 2]]) 0)
  (test = (cddr [0 1 2 3]) [2 3]))

(test-set caadr
  (test = (caadr [[1] [2] [3] [4]]) 2)
  (test = (cadar [[1 2 3] [4 3 4]]) 2)
  (test = (caddr [23 45 65]) 65)
  (test = (cdadr [1 [2 3] 4] ) [3])
  (test = (caaar [[[3] 2] 1]) 3)
  (test = (cdaar [[[1 3 4] 2]]) [3 4])
  (test = (cdddr [1 2 3 4 5]) [4 5]))

(test-set caaadr
  (test = (caaaar [[[[1]]]]) 1)
  (test = (caaadr [1 [[4 3]]]) 4)
  (test = (caaddr [1 2 [3 2]]) 3)
  (test = (caadar [[1 [6 7]]]) 6)
  (test = (cadddr [1 2 3 4 5]) 4)
  (test = (cadadr [1 [2 3 4] 5]) 3)
  (test = (cdaaar [[[[1 5 6]]]]) [5 6])
  (test = (cddaar [[[1 2 3 4]]]) [3 4])
  (test = (cddadr [1 [2 3 4 5]]) [4 5])
  (test = (cddddr [1 2 3 4 5 6]) [5 6]))
