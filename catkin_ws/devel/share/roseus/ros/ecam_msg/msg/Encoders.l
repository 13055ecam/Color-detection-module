;; Auto-generated. Do not edit!


(when (boundp 'ecam_msg::Encoders)
  (if (not (find-package "ECAM_MSG"))
    (make-package "ECAM_MSG"))
  (shadow 'Encoders (find-package "ECAM_MSG")))
(unless (find-package "ECAM_MSG::ENCODERS")
  (make-package "ECAM_MSG::ENCODERS"))

(in-package "ROS")
;;//! \htmlinclude Encoders.msg.html


(defclass ecam_msg::Encoders
  :super ros::object
  :slots (_front_left _front_right _rear_left _rear_right ))

(defmethod ecam_msg::Encoders
  (:init
   (&key
    ((:front_left __front_left) 0)
    ((:front_right __front_right) 0)
    ((:rear_left __rear_left) 0)
    ((:rear_right __rear_right) 0)
    )
   (send-super :init)
   (setq _front_left (round __front_left))
   (setq _front_right (round __front_right))
   (setq _rear_left (round __rear_left))
   (setq _rear_right (round __rear_right))
   self)
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:rear_left
   (&optional __rear_left)
   (if __rear_left (setq _rear_left __rear_left)) _rear_left)
  (:rear_right
   (&optional __rear_right)
   (if __rear_right (setq _rear_right __rear_right)) _rear_right)
  (:serialization-length
   ()
   (+
    ;; int64 _front_left
    8
    ;; int64 _front_right
    8
    ;; int64 _rear_left
    8
    ;; int64 _rear_right
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _front_left
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _front_left (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _front_left) (= (length (_front_left . bv)) 2)) ;; bignum
              (write-long (ash (elt (_front_left . bv) 0) 0) s)
              (write-long (ash (elt (_front_left . bv) 1) -1) s))
             ((and (class _front_left) (= (length (_front_left . bv)) 1)) ;; big1
              (write-long (elt (_front_left . bv) 0) s)
              (write-long (if (>= _front_left 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _front_left s)(write-long (if (>= _front_left 0) 0 #xffffffff) s)))
     ;; int64 _front_right
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _front_right (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _front_right) (= (length (_front_right . bv)) 2)) ;; bignum
              (write-long (ash (elt (_front_right . bv) 0) 0) s)
              (write-long (ash (elt (_front_right . bv) 1) -1) s))
             ((and (class _front_right) (= (length (_front_right . bv)) 1)) ;; big1
              (write-long (elt (_front_right . bv) 0) s)
              (write-long (if (>= _front_right 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _front_right s)(write-long (if (>= _front_right 0) 0 #xffffffff) s)))
     ;; int64 _rear_left
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rear_left (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rear_left) (= (length (_rear_left . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rear_left . bv) 0) 0) s)
              (write-long (ash (elt (_rear_left . bv) 1) -1) s))
             ((and (class _rear_left) (= (length (_rear_left . bv)) 1)) ;; big1
              (write-long (elt (_rear_left . bv) 0) s)
              (write-long (if (>= _rear_left 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rear_left s)(write-long (if (>= _rear_left 0) 0 #xffffffff) s)))
     ;; int64 _rear_right
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rear_right (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rear_right) (= (length (_rear_right . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rear_right . bv) 0) 0) s)
              (write-long (ash (elt (_rear_right . bv) 1) -1) s))
             ((and (class _rear_right) (= (length (_rear_right . bv)) 1)) ;; big1
              (write-long (elt (_rear_right . bv) 0) s)
              (write-long (if (>= _rear_right 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rear_right s)(write-long (if (>= _rear_right 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _front_left
#+(or :alpha :irix6 :x86_64)
      (setf _front_left (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _front_left (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _front_right
#+(or :alpha :irix6 :x86_64)
      (setf _front_right (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _front_right (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rear_left
#+(or :alpha :irix6 :x86_64)
      (setf _rear_left (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rear_left (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rear_right
#+(or :alpha :irix6 :x86_64)
      (setf _rear_right (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rear_right (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get ecam_msg::Encoders :md5sum-) "189368fd89d1fdc2727ab57efab8cd75")
(setf (get ecam_msg::Encoders :datatype-) "ecam_msg/Encoders")
(setf (get ecam_msg::Encoders :definition-)
      "int64 front_left
int64 front_right
int64 rear_left
int64 rear_right
")



(provide :ecam_msg/Encoders "189368fd89d1fdc2727ab57efab8cd75")


