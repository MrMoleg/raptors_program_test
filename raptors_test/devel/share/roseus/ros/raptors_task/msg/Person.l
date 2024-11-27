;; Auto-generated. Do not edit!


(when (boundp 'raptors_task::Person)
  (if (not (find-package "RAPTORS_TASK"))
    (make-package "RAPTORS_TASK"))
  (shadow 'Person (find-package "RAPTORS_TASK")))
(unless (find-package "RAPTORS_TASK::PERSON")
  (make-package "RAPTORS_TASK::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(defclass raptors_task::Person
  :super ros::object
  :slots (_IndexNumber _Name _Surname _Section _YearOfBirth ))

(defmethod raptors_task::Person
  (:init
   (&key
    ((:IndexNumber __IndexNumber) 0)
    ((:Name __Name) "")
    ((:Surname __Surname) "")
    ((:Section __Section) "")
    ((:YearOfBirth __YearOfBirth) 0)
    )
   (send-super :init)
   (setq _IndexNumber (round __IndexNumber))
   (setq _Name (string __Name))
   (setq _Surname (string __Surname))
   (setq _Section (string __Section))
   (setq _YearOfBirth (round __YearOfBirth))
   self)
  (:IndexNumber
   (&optional __IndexNumber)
   (if __IndexNumber (setq _IndexNumber __IndexNumber)) _IndexNumber)
  (:Name
   (&optional __Name)
   (if __Name (setq _Name __Name)) _Name)
  (:Surname
   (&optional __Surname)
   (if __Surname (setq _Surname __Surname)) _Surname)
  (:Section
   (&optional __Section)
   (if __Section (setq _Section __Section)) _Section)
  (:YearOfBirth
   (&optional __YearOfBirth)
   (if __YearOfBirth (setq _YearOfBirth __YearOfBirth)) _YearOfBirth)
  (:serialization-length
   ()
   (+
    ;; int64 _IndexNumber
    8
    ;; string _Name
    4 (length _Name)
    ;; string _Surname
    4 (length _Surname)
    ;; string _Section
    4 (length _Section)
    ;; int64 _YearOfBirth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _IndexNumber
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _IndexNumber (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _IndexNumber) (= (length (_IndexNumber . bv)) 2)) ;; bignum
              (write-long (ash (elt (_IndexNumber . bv) 0) 0) s)
              (write-long (ash (elt (_IndexNumber . bv) 1) -1) s))
             ((and (class _IndexNumber) (= (length (_IndexNumber . bv)) 1)) ;; big1
              (write-long (elt (_IndexNumber . bv) 0) s)
              (write-long (if (>= _IndexNumber 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _IndexNumber s)(write-long (if (>= _IndexNumber 0) 0 #xffffffff) s)))
     ;; string _Name
       (write-long (length _Name) s) (princ _Name s)
     ;; string _Surname
       (write-long (length _Surname) s) (princ _Surname s)
     ;; string _Section
       (write-long (length _Section) s) (princ _Section s)
     ;; int64 _YearOfBirth
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _YearOfBirth (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _YearOfBirth) (= (length (_YearOfBirth . bv)) 2)) ;; bignum
              (write-long (ash (elt (_YearOfBirth . bv) 0) 0) s)
              (write-long (ash (elt (_YearOfBirth . bv) 1) -1) s))
             ((and (class _YearOfBirth) (= (length (_YearOfBirth . bv)) 1)) ;; big1
              (write-long (elt (_YearOfBirth . bv) 0) s)
              (write-long (if (>= _YearOfBirth 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _YearOfBirth s)(write-long (if (>= _YearOfBirth 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _IndexNumber
#+(or :alpha :irix6 :x86_64)
      (setf _IndexNumber (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _IndexNumber (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Surname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Surname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Section
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Section (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _YearOfBirth
#+(or :alpha :irix6 :x86_64)
      (setf _YearOfBirth (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _YearOfBirth (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get raptors_task::Person :md5sum-) "5bab4e573b68d65c015b7a4a92f95360")
(setf (get raptors_task::Person :datatype-) "raptors_task/Person")
(setf (get raptors_task::Person :definition-)
      "int64 IndexNumber
string Name
string Surname
string Section
int64 YearOfBirth
")



(provide :raptors_task/Person "5bab4e573b68d65c015b7a4a92f95360")


