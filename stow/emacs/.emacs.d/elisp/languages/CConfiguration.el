;;; CConfiguration.el --- Emacs tweaks and features for C development
;; Author: lturpinat

;; start compilation without re-asking compilation command
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))
;; advanced GDB display
(setq gdb-many-windows t)

;; display C main program
(setq gdb-show-main t)

;; switching from default GNU code-style to linux's one
(setq c-default-style "linux")

;; set default compile command
(setq compile-command "clang *.c -o programme")
