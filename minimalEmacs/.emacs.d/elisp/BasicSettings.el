;;;;;;;;;;;;;;;;;;;;
;; Basic Settings ;;
;;;;;;;;;;;;;;;;;;;;

(setq user-full-name "Louis Turpinat")

;; Package Manager

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)

(setq install::fresh 0)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar packages
  '(
    color-theme-sanityinc-tomorrow
    counsel
    undo-tree
    rainbow-delimiters
    ivy
    )
  )

(dolist (p packages)
  (when (not (package-installed-p p))
    (package-install p)
    (setq install:fresh 1)))

(when (= install::fresh 1)
  (restart-emacs))

;;;;;;;;;;;;;;;;;;;;;
;; Global Settings ;;
;;;;;;;;;;;;;;;;;;;;;

;; disable emacs startup screen & message
(setq inhibit-startup-screen  t
      inhibit-startup-message t)

(setq initial-scratch-message nil) ;; force *scratch* buffer to start blank

(defalias 'yes-or-no-p 'y-or-n-p) ;; emacs asks "y or n" instead of "yes or no"

;; removing some ugly GUI components
(tool-bar-mode -1)
(scroll-bar-mode -1) 
(menu-bar-mode -1) 
(fset 'menu-bar-open nil) ;; Disable right-click pop-up menu

;; font
(set-face-attribute 'default nil
		    :family "DejaVu Sans Mono"
		    :height 120
		    :weight 'normal
		    :width 'normal)

(load-theme 'sanityinc-tomorrow-night t) ;; set theme

;; modeline
(line-number-mode 1)
(column-number-mode 1)

(display-time) ;; display time

(setq display-time-default-load-average nil) ;; remove system load average (which is usually by the time display)
(setq battery-mode-line-format " [%p]") ;; set battery display format (in percentage)

					;(setq auto-save-interval 20) ;; save buffer every 20 characters typed

;; Save files into temp folder
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(delete-selection-mode t) ;; enable text overwriting (selected text is removed when a key is pressed)

(setq dired-listing-switches "-alh") ;; ls args for dired (hidden files & folders, listed with human readable units)

(setq scroll-preserve-screen-position 1) ;; keep cursor at same position when scrolling

(when (string= system-name "atlas")
  (display-battery-mode)) ;; display battery percentage (only on my laptop named "atlas")

(setq explicit-shell-file-name "/bin/zsh") ;; set zsh terminal emulator by default

;; turn off the blinking cursor
(blink-cursor-mode -1)

;; disable tips
(tooltip-mode 0) ;; disable pop-up
(setq show-help-function nil) ;; disable mini-buffer tips

;; disable backups
(setq backup-inhibited t)

(define-key read-expression-map [(tab)] 'hippie-expand) ;; "enable tab completion in the `eval-expression` minibuffer, I just bind the tab key to `hippie-expand` in the `read-expression-map`"

(setq tab-width 2) ;; set default indentation to two spaces

;; highlights common programming keywords like "FIX" or "TODO" (add ":" at the end the word)
(defun font-lock-comment-annotations ()
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|OPTIMIZE\\|HACK\\|REFACTOR\\):"
	  1 font-lock-warning-face t))))

(add-hook 'prog-mode-hook 'font-lock-comment-annotations)

(setq info-header-line nil)
(setq info-use-header-line nil) 

;; set default compilation command
(setq compile-command "clang *.c -o programme")

;; set favorite coding system
(prefer-coding-system 'utf-8)
(define-coding-system-alias 'UTF-8 'utf-8)

;; auto refresh files when changed from disk
(global-auto-revert-mode t)

;; disable mouse scrolling acceleration
(setq mouse-wheel-progressive-speed nil)

;; persistent history

(setq savehist-file "~/.emacs.d/savehist")
(setq savehist-additional-variables
      '(buffer-name-history
	compile-command
	extended-command-history
	file-name-history
	kill-ring
	regexp-search-ring
	search-ring))

(savehist-mode 1) ;; enable persistent history
