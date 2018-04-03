
(cl:in-package :asdf)

(defsystem "ecam_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Encoders" :depends-on ("_package_Encoders"))
    (:file "_package_Encoders" :depends-on ("_package"))
  ))