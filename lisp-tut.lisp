;;;;==========================================
;;;;    _     _           
;;;;   | |   (_)___ _ __  
;;;;   | |   | / __| '_ \ 
;;;;   | |___| \__ \ |_) |
;;;;   |_____|_|___/ .__/ 
;;;;               |_|    
;;;;
;;;;   Lisp tutorial by Derek Banas             
;;;;                                          
;;;;   2021-08-11                               
;;;;                                          
;;;;==========================================

;;============================================
;; Comments                                   
;;============================================

;;; Comment

;; Comment

; Comment

#||
Multiline
||#

;;============================================
;; Introduction                                        
;;============================================

(format t "------------------------------ ~%")

(format t "Hello world ~%")

(print "What's your name > ")

;;; letter numbers + - _ * = < > ? !

(defvar *name* 'Tomas)
;(defvar *name* (read))

(defun hello-you (name) 
  (format t "Hello ~a! ~%" name))

;;; ~a : Shows the value
;;; ~s : Shows quotes around the value
;;; ~10a : Adds 10 spaces for the value with extra
;;;        space to the left
;;; ~10@a : Adds 10 spaces for the value with extra
;;;        space to the right

(setq *print-case* :capitalize) 
;(setq *print-case* :upcase)
;(setq *print-case* :downcase)

(hello-you *name*)

(+ 5 4)

(+ 5 (- 6 2 )) 

(+ 5 4)

;; [+] [5] [4] [nil]

(defvar *number* 0)

(setf *number* 6)

;;============================================
;; Format
;;============================================

(format t "------------------------------ ~%")

(format t "Number with commas ~:d ~%" 10000000)

(format t "PI to 5 characters ~5f ~%" 3.141593)

(format t "PI to 4 decimals ~,4f ~%" 3.141593)

(format t "10 Percent ~,,2f ~%" .10)

(format t "10 Dollars ~$ ~%" 10)

;;============================================
;; Math functions
;;============================================

(format t "------------------------------ ~%")

(format t "(+ 5 4) = ~d ~%" (+ 5 4))
(format t "(- 5 4) = ~d ~%" (- 5 4))
(format t "(* 5 4) = ~d ~%" (* 5 4))
(format t "(/ 5 4) = ~d ~%" (/ 5 4))
(format t "(/ 5 4.0) = ~d ~%" (/ 5 4.0))
(format t "(rem 5 4) = ~d ~%" (rem 5 4))
(format t "(mod 5 4) = ~d ~%" (mod 5 4))

(format t "(expt 4 2) = ~d ~%" (expt 4 2))
(format t "(sqrt 81) = ~d ~%" (sqrt 81))
(format t "(exp 1) = ~d ~%" (exp 1))
(format t "(log 1000 10) = ~d ~%" (log 1000 10)) ; = 3 = Because 10^3 = 1000
(format t "(eq 'dog 'dog) = ~d ~%" (eq 'dog 'dog))
(format t "(floor 5.5) = ~d ~%" (floor 5.5))
(format t "(ceiling 5.5) = ~d ~%" (ceiling 5.5))
(format t "(max 5 10) = ~d ~%" (max 5 10))
(format t "(min 5 10) = ~d ~%" (min 5 10))
(format t "(oddp 15) = ~d ~%" (oddp 15))
(format t "(evenp 15) = ~d ~%" (evenp 15))
(format t "(numberp 15) = ~d ~%" (numberp 15))
(format t "(null nil) = ~d ~%" (null nil))

;;; sin, cos, tan, asin, acons, atan

;;============================================
;; Equality
;;============================================

(format t "------------------------------ ~%")

(defparameter *name* 'Derek)

(format t "(eq *name 'Derek) = ~d ~%" (eq *name* 'Derek)) 
(format t "(equal 10 10) = ~d ~%" (equal 10 10))
(format t "(equal 5.5 5.3) = ~d ~%" (equal 5.5 5.3))

(format t "(equal \"string\" \"String\") = ~d ~%"
    (equal "string" "String"))

(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d ~%"
    (equal (list 1 2 3) (list 1 2 3)))

(format t "(equalp 1.0 1) = ~d ~%" (equalp 1.0 1))

(format t "(equalp \"Derek\" \"derek\") = ~d ~%"
    (equalp "Derek" "derek"))

;;============================================
;; If
;;============================================

(format t "------------------------------ ~%")

(defvar *age* 18)

;; > < >= <= =

(if (= *age* 18)
  (format t "You can vote~%")
  (format t "You can't vote~%"))

(if (not (= *age* 18))
  (format t "You can't vote~%"))
  (format t "You can vote~%")

(if (and (<= *age* 14) (>= *age* 67) )
  (format t "Work if you want~%"))
  (format t "Time for work~%")

(if (or (<= *age* 14) (>= *age* 67) )
  (format t "Work if you want~%"))
  (format t "Time for work~%")

(defvar *num* 2)
(defvar *num-2* 2)
(defvar *num-3* 2)

(if (= *num* 2)
    (progn
        (setf *num-2* (* *num-2* 2))
        (setf *num-3* (* *num-3* 3 ))
    )
    (format t "Not equal to 2~%"))
 
(format t "*num-2* = ~d ~%" *num-2*)
(format t "*num-3* = ~d ~%" *num-3*)

;;============================================
;; Case
;;============================================

(format t "------------------------------ ~%")

(defvar *age-2* 5)

(defun get-school (age-2)
  (case age-2
    (5 (print "Kindergarten"))
    (6 (print "First Grade"))
    (otherwise (print "middle school"))))

(get-school *age-2*)

(terpri)

;;============================================
;; When
;;============================================

(format t "------------------------------ ~%")

(when (= *age* 18)
  (setf *num-3* 18)
  (format t "Go to college you're ~d ~%" *num-3*)
)

;;============================================
;; Unless
;;============================================

(format t "------------------------------ ~%")

(unless (not (= *age* 18))
  (setf *num-3* 18)
  (format t "Something Random ~%")
)

;;============================================
;; Cond
;;============================================

(format t "------------------------------ ~%")

(defvar *college-ready* nil)

(cond ( (>= *age* 18)
       (setf *college-ready* 'yes)
       (format t "Ready for college ~%"))
      ( (< *age* 18)
        (setf *college-ready* 'no)
        (format t "Not Ready for college ~%"))
      (t (format t "Don't Know ~%")))

;;============================================
;; Loop
;;============================================

(format t "------------------------------ ~%")

(loop for x from 1 to 10
      do (print x))

(terpri)
(terpri)

(setq x 1)

(loop 
  (format t "~d ~%" x)
  (setq x (+ x 1))
  (when (> x 10) (return x ))
)

(terpri)

(loop for x in '(Peter Paul Mary) do
      (format t "~s ~%" x)
)

(terpri)

(loop for y from 100 to 110 do
      (print y)
)

(terpri)

;;============================================
;; DoTimes
;;============================================

(format t "------------------------------ ~%")

(dotimes (y 12)
  (print y))

(terpri)

;;============================================
;; Lists
;;============================================

(format t "------------------------------ ~%")

(cons 'superman 'batman)

(list 'superman 'batman 'flash)

(cons 'aquaman '(superman batman))

;;============================================
;; Car / Cdr
;;============================================

(format t "------------------------------ ~%")

(format t "First = ~a ~%" (car '(superman batman aquaman)))

(format t "Everything Else = ~a ~%" (cdr '(superman batman aquaman)))

(format t "2nd Item = ~a ~%" (cadr '(superman batman aquaman flash joker)))

(format t "4th Item = ~a ~%" (cadddr '(superman batman aquaman flash joker)))

(format t "Is it a list = ~a ~%" (listp '(batman superman)))

(format t "Is 3 in list = ~a ~%" (if (member 3 '(2 4 6)) 't nil))

(append '(just) '(some) '(random words))

(defparameter *nums* '(2 4 6))
(push 1 *nums*)

(format t "2nd Item in list = ~a ~%" (nth 2 *nums*))

(defvar superman (list :name "Superman" :secret-id "Clark Kent"))

(defvar *hero-list* nil)

(push superman *hero-list*)

(dolist (hero *hero-list*)
  (format t "~{~a : ~a ~}~%" hero))
 
;;============================================
;; Association List
;;============================================

(format t "------------------------------ ~%")

(defparameter *heroes*
  '((Superman (Clark Kent))
    (Flash (Barry Allen))
    (Batman (Bruce Wayne))))

(format t "Superman Data is ~a ~%" (assoc 'superman *heroes*))

(format t "Superman is ~a ~%" (cadr (assoc 'superman *heroes*)))

(defparameter *hero-size*
  '((Superman (6 ft 3 in) (230 lbs))
    (Flash (6 ft 0 in) (190 lbs))
    (Batman (6 ft 2 in) (210 lbs))))

(format t "Superman is ~a ~%" (cadr (assoc 'Superman *hero-size*)))

;;============================================
;; [Functions]
;;============================================

(format t "------------------------------ ~%")

(defun hello()
  (print "Hello")
  (terpri))

(hello)

(defun get-avg (num-1 num-2)
  (/ (+ num-1 num-2) 2))

(format t "Avg 10 & 50 = ~a ~%" (get-avg 10 50))

;;============================================
;; [Functions] Optional
;;============================================

(format t "------------------------------ ~%")

(defun print-list (w x &optional y z)
  (format t "List = ~a ~%" (list w x y z)))

(print-list 1 2 3)

;;============================================
;; [Functions] Receive Multiple Values
;;============================================

(format t "------------------------------ ~%")

(defvar *total* 0)

(defun sum (&rest nums)
  (dolist (num nums)
    (setf *total* (+ *total* num))
  )
  (format t "Sum = ~a ~%" *total*)
)

(sum 1 2 3 4 5 6 7)

;;============================================
;; [Functions] Key
;;============================================

(format t "------------------------------ ~%")

(defun print-list(&optional &key x y z)
  (format t "List: ~a ~%" (list x y z))
)

(print-list :x 1 :y 2)

;;============================================
;; [Functions] Return-From
;;============================================

(format t "------------------------------ ~%")

(defun difference (num1 num2)
  (return-from difference(- num1 num2)))

(format t "10 - 2 = ~a ~%" (difference 10 2))

;;============================================
;; [Functions] Quasi Quoting
;;============================================

(format t "------------------------------ ~%")

(defparameter *hero-size*
  '((Superman (6 ft 3 in) (230 lbs))
    (Flash (6 ft 0 in) (190 lbs))
    (Batman (6 ft 2 in) (210 lbs))))

(defun get-hero-data (size)
  (format t "~a ~%"
	  `(,(caar size) is ,(cadar size) and ,(cddar size))))

(get-hero-data *hero-size*)

;;============================================
;; [Functions] MapCar
;;============================================

(format t "------------------------------ ~%")

(format t "A number ~a ~%" (mapcar #'numberp '(1 2 3 f g)))

;;============================================
;; [Functions] Local Functions
;;============================================

(format t "------------------------------ ~%")

;; (flet ((func-name (arguments)
;;    function Body ))
;;    body))

(flet ((double-it (num)
    (* num 2))
    (triple-it (num)
    (* num 3)))
    (format t "Double & Triple 10 = ~d~%" (triple-it(double-it 10))))

(labels ((double-it (num)
        (* num 2))
    (triple-it (num)
        (* (double-it num) 3)))
    (format t "Double & Triple 3 = ~d~%" (triple-it 3)))

;;============================================
;; [Functions] Return Multiple Values
;;============================================

(format t "------------------------------ ~%")

(defun squares (num)
  (values (expt num 2) (expt num 3)))

(multiple-value-bind (a b) (squares 2)
  (format t "2^2 = ~d, 2^3 = ~d~%" a b))

;;============================================
;; [Functions] Higher Order Functions
;;============================================

(format t "------------------------------ ~%")

(defun times-3 (x) (* 3 x))
(defun times-4 (x) (* 4 x))

(defun multiples (mult-func max-num)
  (dotimes (x max-num)

    (format t "~d : ~d ~%" x (funcall mult-func x))))

(multiples #'times-3 10)
(multiples #'times-4 10)
 
;;============================================
;; [Functions] Lambda
;;============================================

(format t "------------------------------ ~%")

(mapcar (lambda (x) (print (* x 2))) '(1 2 3 4 5))

(terpri)

;;============================================
;; Macros
;;============================================

(format t "------------------------------ ~%")

(defvar *num* 2)
(defvar *num-2* 0)

(terpri)

(if (= *num* 2)
    (progn
      (setf *num-2* 2)
      (format t "*num-2* = ~d ~%" *num-2*)
    )
    (format t "Not equal to 2 ~%"))

(defmacro ifit (condition &rest body)
  `(if, condition (progn ,@body) (format t "Can't Drive ~%")
  ))

(setf *age* 16)

(ifit (>= *age* 16)
      (print "You are over 16")
      (print "Time to Drive")
      (terpri)
)

(defun add (num1 num2)
  (let ((sum (+ num1 num2)))
    (format t "~a + ~a = ~a ~%" num1 num2 sum)))

(defmacro letx (var val &rest body)
  `(let ((,var , val)) ,@body))

(defun subtract (num1 num2)
  (letx dif (- num1 num2)
    (format t "~a - ~a = ~a ~%" num1 num2 dif)))

(subtract 10 6)

;;============================================
;; Classes
;;============================================

(format t "------------------------------ ~%")

(defclass animal()
  (name
   sound))

(defparameter *dog* (make-instance 'animal))

(setf (slot-value *dog* 'name) "Spot")
(setf (slot-value *dog* 'sound) "Woof")

(format t "~a says ~a ~%"
    (slot-value *dog* 'name)
    (slot-value *dog* 'sound))

(defclass mammal ()
  ((name
    :initarg :name
    :initform (error "Must provide a name"))
   (sound
    :initarg :sound
    :initform "No Sound"
    :accessor mammal-sound
    ;; :reader mammal-sound
    ;; :writer mammal-sound
)))

(defparameter *king-kong*
  (make-instance 'mammal :name "King Kong" :sound "Rawwr")
)

(format t "~a says ~a ~%"
    (slot-value *king-kong* 'name)
    (slot-value *king-kong* 'sound))

(defparameter *fluffy*
  (make-instance 'mammal :name "Fluffy" :sound "Meow")
)

;;============================================
;; Generic Function
;;============================================

(format t "------------------------------ ~%")

;; They have a name and a parameter list,
;; but no implementation
;;
;; This is because in Lisp methods do not
;; belong to classes, but instead belong
;; to generic functions, which are responsible
;; for executing the correct method based
;; on the data that was passed.

(defgeneric make-sound (mammal))

(defmethod make-sound ((the-mammal mammal))
    (format t "~a says ~a ~%"
    (slot-value the-mammal 'name)
    (slot-value the-mammal 'sound)))

(make-sound *king-kong*)
(make-sound *fluffy*)

;; Setter
(defgeneric (setf mammal-name) (value the-mammal))

(defmethod (setf mammal-name) (value (the-mammal mammal))
  (setf (slot-value the-mammal 'name) value))

;; Getter
(defgeneric mammal-name (the-mammal))

(defmethod mammal-name ((the-mammal mammal))
  (slot-value the-mammal 'name))

;; Using manually created setter and getter
(setf (mammal-name *king-kong*) "Kong")

(format t "I am ~a ~%" (mammal-name *king-kong*))

;; Using automatically generated getter and setter
(setf (mammal-sound *king-kong*) "Rawwwwr")

(format t "I am ~a ~%" (mammal-sound *king-kong*))

;;============================================
;; Inheritance
;;============================================

(format t "------------------------------ ~%")

;; For multiple inheritance - separate the class
;; names with commas in the parenthesis
(defclass dog (mammal) ())

(defparameter *rover*
  (make-instance 'dog :name "Rover" :sound "Woof"))

(make-sound *rover*)

;;============================================
;; Arrays
;;============================================

(format t "------------------------------ ~%")

(defparameter names (make-array 3))

(setf (aref names 1) 'Bob)

(format t "~a ~%" (aref names 1))

(setf num-array (make-array '(3 3)
    :initial-contents '((0 1 2) (3 4 5) (6 7 8))))

(dotimes (x 3)
  (dotimes (y 3)
    (print (aref num-array x y))
  )
)

;;============================================
;; Hash Table
;;============================================

(format t "------------------------------ ~%")

(defparameter people (make-hash-table))

(setf (gethash '102 people) '(Paul Smith))
(setf (gethash '103 people) '(Sam Smith))

(format t "~a ~%" (gethash '102 people))

(maphash #'(lambda (k v) (format t "~a = ~a ~%" k v)) people)

(remhash '103 people)

;;============================================
;; Structures
;;============================================

(format t "------------------------------ ~%")

(defstruct customer name address id)

(setq paulsmith (make-customer
    :name "Paul Smith"
    :address "123 Main"
    :id 1000))

(format t "~a ~%" (customer-name paulsmith))

(setf (customer-address paulsmith) "125 main")

(write paulsmith)

(terpri)

(setq sally-smith-1001 (make-customer
    :name "Sally Smith"
    :address "126 main"
    :id 1001))

(write sally-smith-1001)

(terpri)

;;============================================
;; File I/O
;;============================================

(format t "------------------------------ ~%")

(with-open-file (my-stream
		 "test.txt"
		 :direction :output
		 :if-exists :supersede)
    (princ "Some random Text" my-stream)))

(let ((in (open "test.txt" :if-does-not-exist nil)))
  (when in
    (loop for line = (read-line in nil)
    while line do (format t "~a~%" line))
    (close in)
  ))


 
