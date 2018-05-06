(require 'package)
(package-initialize)
(require 'cl)    ;; common-lisp dep. for packages & emacs advanced features

(defvar my-start-time (current-time)
  "Time when Emacs was started")

;; Basic settings file
(load-file "~/.emacs.d/elisp/BasicSettings.el")

;; Global Shortcuts file
(load-file "~/.emacs.d/elisp/GlobalShortcuts.el")

;; Plugins configuration files

(load-file "~/.emacs.d/elisp/plugins/Ivy.el")
(load-file "~/.emacs.d/elisp/plugins/UndoTree.el")
(load-file "~/.emacs.d/elisp/plugins/RainbowDelimiters.el")

;; display the time needed by emacs to start
(message "Start up time %.2fs" (float-time (time-subtract (current-time) my-start-time)))
