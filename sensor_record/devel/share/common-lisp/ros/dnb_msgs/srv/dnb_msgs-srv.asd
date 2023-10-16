
(cl:in-package :asdf)

(defsystem "dnb_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :dnb_msgs-msg
)
  :components ((:file "_package")
    (:file "ConfigureDatastoreExternalSource" :depends-on ("_package_ConfigureDatastoreExternalSource"))
    (:file "_package_ConfigureDatastoreExternalSource" :depends-on ("_package"))
    (:file "GetProgramsList" :depends-on ("_package_GetProgramsList"))
    (:file "_package_GetProgramsList" :depends-on ("_package"))
    (:file "RunProgramWithArguments" :depends-on ("_package_RunProgramWithArguments"))
    (:file "_package_RunProgramWithArguments" :depends-on ("_package"))
    (:file "SetInt32" :depends-on ("_package_SetInt32"))
    (:file "_package_SetInt32" :depends-on ("_package"))
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
  ))