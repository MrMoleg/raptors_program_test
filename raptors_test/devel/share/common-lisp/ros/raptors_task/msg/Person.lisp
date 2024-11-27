; Auto-generated. Do not edit!


(cl:in-package raptors_task-msg)


;//! \htmlinclude Person.msg.html

(cl:defclass <Person> (roslisp-msg-protocol:ros-message)
  ((IndexNumber
    :reader IndexNumber
    :initarg :IndexNumber
    :type cl:integer
    :initform 0)
   (Name
    :reader Name
    :initarg :Name
    :type cl:string
    :initform "")
   (Surname
    :reader Surname
    :initarg :Surname
    :type cl:string
    :initform "")
   (Section
    :reader Section
    :initarg :Section
    :type cl:string
    :initform "")
   (YearOfBirth
    :reader YearOfBirth
    :initarg :YearOfBirth
    :type cl:integer
    :initform 0))
)

(cl:defclass Person (<Person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptors_task-msg:<Person> is deprecated: use raptors_task-msg:Person instead.")))

(cl:ensure-generic-function 'IndexNumber-val :lambda-list '(m))
(cl:defmethod IndexNumber-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptors_task-msg:IndexNumber-val is deprecated.  Use raptors_task-msg:IndexNumber instead.")
  (IndexNumber m))

(cl:ensure-generic-function 'Name-val :lambda-list '(m))
(cl:defmethod Name-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptors_task-msg:Name-val is deprecated.  Use raptors_task-msg:Name instead.")
  (Name m))

(cl:ensure-generic-function 'Surname-val :lambda-list '(m))
(cl:defmethod Surname-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptors_task-msg:Surname-val is deprecated.  Use raptors_task-msg:Surname instead.")
  (Surname m))

(cl:ensure-generic-function 'Section-val :lambda-list '(m))
(cl:defmethod Section-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptors_task-msg:Section-val is deprecated.  Use raptors_task-msg:Section instead.")
  (Section m))

(cl:ensure-generic-function 'YearOfBirth-val :lambda-list '(m))
(cl:defmethod YearOfBirth-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptors_task-msg:YearOfBirth-val is deprecated.  Use raptors_task-msg:YearOfBirth instead.")
  (YearOfBirth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person>) ostream)
  "Serializes a message object of type '<Person>"
  (cl:let* ((signed (cl:slot-value msg 'IndexNumber)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Surname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Surname))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Section))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Section))
  (cl:let* ((signed (cl:slot-value msg 'YearOfBirth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person>) istream)
  "Deserializes a message object of type '<Person>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'IndexNumber) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Surname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Surname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Section) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Section) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'YearOfBirth) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person>)))
  "Returns string type for a message object of type '<Person>"
  "raptors_task/Person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person)))
  "Returns string type for a message object of type 'Person"
  "raptors_task/Person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person>)))
  "Returns md5sum for a message object of type '<Person>"
  "5bab4e573b68d65c015b7a4a92f95360")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person)))
  "Returns md5sum for a message object of type 'Person"
  "5bab4e573b68d65c015b7a4a92f95360")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person>)))
  "Returns full string definition for message of type '<Person>"
  (cl:format cl:nil "int64 IndexNumber~%string Name~%string Surname~%string Section~%int64 YearOfBirth~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person)))
  "Returns full string definition for message of type 'Person"
  (cl:format cl:nil "int64 IndexNumber~%string Name~%string Surname~%string Section~%int64 YearOfBirth~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'Name))
     4 (cl:length (cl:slot-value msg 'Surname))
     4 (cl:length (cl:slot-value msg 'Section))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person>))
  "Converts a ROS message object to a list"
  (cl:list 'Person
    (cl:cons ':IndexNumber (IndexNumber msg))
    (cl:cons ':Name (Name msg))
    (cl:cons ':Surname (Surname msg))
    (cl:cons ':Section (Section msg))
    (cl:cons ':YearOfBirth (YearOfBirth msg))
))
