
(cl:in-package :asdf)

(defsystem "wss-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FloatsWithTimestamp" :depends-on ("_package_FloatsWithTimestamp"))
    (:file "_package_FloatsWithTimestamp" :depends-on ("_package"))
  ))