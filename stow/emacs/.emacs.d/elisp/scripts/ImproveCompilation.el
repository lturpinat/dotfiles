;;; ImproveCompilation.el --- Simply closes compilation buffer after 2 seconds if it went well
;; Author: lturpinat

;; From enberg on #emacs
(setq compilation-finish-function
      (lambda (buf str)
        (if (null (string-match ".*exited abnormally.*" str))
            ;;no errors, make the compilation window go away in a few seconds
            (progn
              (run-at-time
               "2 sec" nil 'delete-windows-on
               (get-buffer-create "*compilation*"))
              (message "No Compilation Errors!")))))
