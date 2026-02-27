;;https://www.cadtutor.net/forum/topic/23234-lisp-routine-that-will-round-decimal-places/
;; Show only 2 decimal position in AutoCAD text
;; Command: APPLOAD
;; Call from command: R2D2

(defun c:R2D2 (/ ss)
 (if (setq ss (ssget "_:L" '((0 . "TEXT"))))
   ((lambda (i / e l)
      (while (setq e (ssname ss (setq i (1+ i))))
        (setq l (entget e))
        (entmod (subst (cons 1 (rtos (atof (cdr (assoc 1 l))) (getvar 'lunits) 2)) (assoc 1 l) l))
      )
    )
     -1
   )
 )
 (princ)
)