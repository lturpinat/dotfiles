;;; init.el --- Main configuration file
;; Author: lturpinat

(require 'package)
(package-initialize)
(require 'cl)        ;; common-lisp dep. for packages & advanced emacs features

(defvar my-start-time (current-time)
  "Time when Emacs was started")

;; Basic Settings file
(load-file "~/.emacs.d/elisp/BasicSettings.el")

;; Global Shortcuts file
(load-file "~/.emacs.d/elisp/GlobalShortcuts.el")

;; Languages Specific Settings file
(load-file "~/.emacs.d/elisp/languages/CConfiguration.el")
(load-file "~/.emacs.d/elisp/languages/quack.el")

;; Plugins Configuration file
(load-file "~/.emacs.d/elisp/plugins/Ivy.el")
(load-file "~/.emacs.d/elisp/plugins/UndoTree.el")
(load-file "~/.emacs.d/elisp/plugins/RainbowDelimiters.el")
;(load-file "~/.emacs.d/elisp/plugins/Auctex.el")
(load-file "~/.emacs.d/elisp/plugins/Flymake.el")
(load-file "~/.emacs.d/elisp/plugins/Auto-Complete.el")
(load-file "~/.emacs.d/elisp/plugins/Latex-Preview-Pane.el")
(load-file "~/.emacs.d/elisp/plugins/Browse-Kill-Ring.el")
(load-file "~/.emacs.d/elisp/plugins/Markdown.el")
(load-file  "~/.emacs.d/elisp/plugins/Scheme.el") ;; depends on quack.el

;; Load small scripts
(load-file "~/.emacs.d/elisp/scripts/QuickC.el")
(load-file "~/.emacs.d/elisp/scripts/PackageRefreshAndInstall.el")
(load-file "~/.emacs.d/elisp/scripts/ImproveCompilation.el")

;; Display the time needed by emacs to start
(message "Start up time %.2fs" (float-time (time-subtract (current-time) my-start-time)))

;; Down there emacs custom-set-variables...

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck markdown-mode browse-kill-ring latex-preview-pane auto-complete-auctex better-defaults rainbow-delimiters undo-tree counsel color-theme-sanityinc-tomorrow))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
