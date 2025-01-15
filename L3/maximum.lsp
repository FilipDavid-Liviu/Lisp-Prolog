(defun maximum (l)
    (cond
        ((null l) nil)
        ((numberp (car l)) (max-f (car l) (maximum (cdr l))))
        ((atom (car l)) (maximum (cdr l)))
        (t (max-f (maximum (car l)) (maximum (cdr l))))
    )
)

(defun max-f (a b)
    (cond
        ((null a) b)
        ((null b) a)
        ((> a b) a)
        (t b)
    )
)

(defun maximum (x)
    (cond
        ((numberp x) x)
        ((atom x) nil)
        (t (apply #'max (mapcar #'maximum x)))
    )
)