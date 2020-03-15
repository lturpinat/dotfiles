(require 'package)
(package-initialize)

(require 'cl)    ;; common-lisp dep. for packages & emacs advanced features
(require 'org) 
(org-babel-load-file (expand-file-name (concat user-emacs-directory "settings.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#cccccc" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#66cccc" "#515151"))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "b04d091b3315afedc67e4e2e9950c272789804cf0cb7e93750d70475a47b935b" default)))
 '(fci-rule-color "#515151")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(package-selected-packages
   (quote
    (color-theme-sanityinc-solarized arduino-mode plsql sqlplus avy leuven-theme dired-narrow zenburn-theme yasnippet yaml-mode wttrin which-key web-mode wc-mode undo-tree syslog-mode spotify spaceline solarized-theme smartparens slime-company restart-emacs rainbow-delimiters python-mode projectile popwin pdf-tools ox-reveal org-pomodoro org-bullets multiple-cursors minimap markdown-mode magit latex-unicode-math-mode latex-math-preview latex-extra javadoc-lookup iedit htmlize hlinum highlight-numbers highlight helm-swoop helm-smex helm-ls-git helm-fuzzier helm-flx helm-dash golden-ratio focus flycheck-irony fix-word expand-region direx dash-at-point csharp-mode company-statistics company-quickhelp company-irony company-c-headers color-theme-sanityinc-tomorrow calfw bug-hunter bm blackboard-theme beacon anzu ace-jump-mode)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f2777a")
     (40 . "#f99157")
     (60 . "#ffcc66")
     (80 . "#99cc99")
     (100 . "#66cccc")
     (120 . "#6699cc")
     (140 . "#cc99cc")
     (160 . "#f2777a")
     (180 . "#f99157")
     (200 . "#ffcc66")
     (220 . "#99cc99")
     (240 . "#66cccc")
     (260 . "#6699cc")
     (280 . "#cc99cc")
     (300 . "#f2777a")
     (320 . "#f99157")
     (340 . "#ffcc66")
     (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
