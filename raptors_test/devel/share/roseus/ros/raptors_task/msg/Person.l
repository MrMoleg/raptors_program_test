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
    ;; int32 _IndexNumber
    4
    ;; string _Name
    4 (length _Name)
    ;; string _Surname
    4 (length _Surname)
    ;; string _Section
    4 (length _Section)
    ;; int32 _YearOfBirth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _IndexNumber
       (write-long _IndexNumber s)
     ;; string _Name
       (write-long (length _Name) s) (princ _Name s)
     ;; string _Surname
       (write-long (length _Surname) s) (princ _Surname s)
     ;; string _Section
       (write-long (length _Section) s) (princ _Section s)
     ;; int32 _YearOfBirth
       (write-long _YearOfBirth s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _IndexNumber
     (setq _IndexNumber (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Surname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Surname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Section
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Section (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _YearOfBirth
     (setq _YearOfBirth (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get raptors_task::Person :md5sum-) "5c66f7d04e1fe420ad3f0efb223970bc")
(setf (get raptors_task::Person :datatype-) "raptors_task/Person")
(setf (get raptors_task::Person :definition-)
      "int32 IndexNumber
string Name
string Surname
string Section
int32 YearOfBirth
")



(provide :raptors_task/Person "5c66f7d04e1fe420ad3f0efb223970bc")


