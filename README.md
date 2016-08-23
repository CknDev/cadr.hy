# cadr.hy


Implementation of cadr in hy lang.

Can be used as:
+ c[a|d][a|d]r,
+ c[a|d][a|d][a|d]r,
+ c[a|d][a|d][a|d][a|d]r


## Install

```
pip install git+https://github.com/CknDev/cadr.hy
```


## Usage

```clojure
;; file example.hy
(require cadr)
(import cadr)


(print (cadr [1 2 3])) ;; will print: 2
```


## Licence

See LICENCE file
