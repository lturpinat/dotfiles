;;; Quack.el --- Settings for Quack
;; Author: lturpinat

(require 'quack)

'(quack-default-program "mit-scheme")

;; enable paren-mode
(show-paren-mode 1)

;; highlight brackets
(setq show-paren-style 'parenthesis)

;; highlight entire expression
(setq show-paren-style 'expression)
