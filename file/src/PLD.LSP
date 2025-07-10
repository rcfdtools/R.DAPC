;;Posted by LE at the swamp.org
;;http://www.theswamp.org/index.php?topic=9441.msg169894#msg169894
(defun getarcsegment (cen r fromvertex p2 / a1 a2 d)
(if (and fromvertex p2)
   (progn (setq a1 (angle cen fromvertex)
a2 (angle cen p2)
   )
   (if (or (< a1 a2) (equal a1 a2 0.001))
     (setq d (* r (- a2 a1)))
     (setq d (* r (- (+ 6.2831853 a2) a1)))
   )
   )
   ;; es un circulo
   (setq d (* r 6.2831853))
)
)

(defun getbulgedata (bulge fromvertex p2 / dir theta beta radio dat)
(setq dir   (cond ((minusp bulge) -1.0)
    (t 1.0)
      )
theta (* 4.0 (atan (abs bulge)))
)
(if (> theta pi)
   (setq theta (- (* 2.0 pi) theta)
  dir (* -1.0 dir)
   )
)
(setq theta (/ theta 2.0)
radio (abs (/ (distance fromvertex p2) (* 2.0 (abs (sin theta)))))
beta  (+ (angle fromvertex p2) (* (- (/ pi 2.0) theta) dir))
pc    (polar fromvertex beta radio)
)
(getarcsegment pc radio p2 fromvertex)
)

(defun getlwpolydata
      (vla_poly / name endparam param closed fromvertex p2 midp bulge vlist)
(setq closed (vla-get-closed vla_poly))
(setq endparam (vlax-curve-getendparam vla_poly))
(setq param endparam)
(setq i 0)
(while (> param 0)
   (setq param (1- param))
   (setq fromvertex (vlax-curve-getpointatparam vla_poly i))
   (if (vlax-property-available-p vla_poly 'bulge)
     (setq bulge (vla-getbulge vla_poly (fix i)))
   )
   (setq nextvertex (vlax-curve-getpointatparam vla_poly (+ i 1)))
   (setq dis (distance fromvertex nextvertex))
   (setq midpt (vlax-curve-getpointatparam vla_poly (+ i 0.5)))
   (if (and bulge (not (zerop bulge)))
     (progn (setq bulge (getbulgedata bulge fromvertex nextvertex))
     (setq etype "ARC")
     )
     (progn bulge (setq etype "LINE"))
   )
;;;;;;    (if (not :rcmPrefixArcText)
;;;;;;      (setq :rcmPrefixArcText "L="))
   (setq vlist (cons (list ;; numero vertice
    (+ i 1)
    ;; tipo de objeto
    etype
    ;; punto medio
    midpt
    ;; inicia vertice
    fromvertex
    ;; termina vertice
    nextvertex
    ;; longitud de curva o recta
;;;;;;        (if (= eType "ARC")
;;;;;; (strcat
;;;;;;    :rcmPrefixArcText
;;;;;;    (rtos bulge (rcmd-getUnits-mode) :rcmPrec))
;;;;;; ;; es una recta
;;;;;; (rtos dis (rcmd-getUnits-mode) :rcmPrec))
      )
      vlist
)
   )
   (setq i (1+ i))
)
(reverse vlist)
)

(defun dib_flechdir (lst_dat / unidad angf dirf pfm pf1 pf2 pf3 pf4 pftemp)
;; establecer longitud de flecha de acuerdo a la altura de pantalla
;; para dibujar las flechas iguales a cualquier nivel de zoom
(setq unidad (/ (getvar "VIEWSIZE") 15))
(foreach dat lst_dat
   (setq angf (cadr dat)
  dirf (caddr dat)
  pfm  (polar (car dat) (+ angf (/ pi 2)) (* unidad 0.3))
  pf1  (polar pfm (- angf pi) (/ unidad 2.0))
  pf2  (polar pfm angf (/ unidad 2.0))
   )
   (if (= dirf 1)
     (setq pf3 (polar pf2 (- angf (/ (* pi 5.0) 6.0)) (/ unidad 4.0))
    pf4 (polar pf2 (+ angf (/ (* pi 5.0) 6.0)) (/ unidad 4.0))
     )
     (setq pftemp pf1
    pf1    pf2
    pf2    pftemp
    pf3    (polar pf2 (+ angf (/ pi 6.0)) (/ unidad 4.0))
    pf4    (polar pf2 (- angf (/ pi 6.0)) (/ unidad 4.0))
     )
   )
   (if flag_dir
     (progn ;; dibujar flecha color verde
     ;; cuando se le cambie de direccion
     (grdraw pf1 pf2 3)
     (grdraw pf2 pf3 3)
     (grdraw pf2 pf4 3)
     )
     (progn ;; dibujar flecha
     (grdraw pf1 pf2 4)
     (grdraw pf2 pf3 4)
     (grdraw pf2 pf4 4)
     )
   )
)
(setq flag_dir nil)
)

;;; Command for test...
(defun c:PLD (/ pol obj pol_data)
(setq pol (car (entsel "\nSelect polyline: "))
obj (vlax-ename->vla-object pol)
pol_data (getlwpolydata obj)
)
(dib_flechdir
   (setq lst_dat
   (vl-remove
     nil
     (mapcar (function (lambda (i)
(if (nth 2 i)
   (list (nth 2 i) (angle (nth 3 i) (nth 4 i)) 1)
)
       )
     )
     pol_data
     )
   )
   )
)
(princ)
)
Edited 4 August 2013 by troggarf

Quote