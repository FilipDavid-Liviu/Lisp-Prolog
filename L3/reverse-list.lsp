(defun reverse-list (l)
    (cond 
        ((null l) nil)
        ((atom (car l)) (append (reverse-list (cdr l)) (list (car l))))
        (t (append (reverse-list (cdr l)) (list (reverse-list (car l)))))
    )
)