(defmodule cl
  (export all))

(defun car
  (('())
   '())
  ((xs)
   (lists:nth 1 xs)))

(defun cdr
  (('())
   '())
  ((xs)
   (lists:nthtail 1 xs)))

(defun nth
  ((n xs) (when (or (< n 1) (> n (length xs))))
   '())
  ((n xs)
   (lists:nth n xs)))

(defun position (x xs)
  (position x 1 xs))

(defun position
  ((x _ '()) 'undefined)
  ((x pos `(,head . ,tail))
   (if (== x head)
       pos
       (position x (+ pos 1) tail))))

(defun butlast (xs)
  (lists:droplast xs))

(defun nthcdr (n xs)
  (lists:nthtail n xs))

(defun mapcar (func xs)
  (lists:map func xs))

(defun remove-duplicates (xs)
  (lists:usort xs))

(defun remove-if-not (func xs)
  (lists:filter func xs))

(defun reduce (func xs)
  (lists:foldl func '() xs))

(defun reduce
  ((func xs 'initial-value x)
   (lists:foldl func x xs))
  ((func xs 'from-end 'true)
   (lists:foldr func '() xs)))

(defun reduce
  ((func xs 'from-end 'true 'initial-value x)
   (lists:foldr func x xs))
  ((func xs 'initial-value x 'from-end 'true)
   (lists:foldr func x xs)))

