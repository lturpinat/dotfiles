(setq has_been_refreshed 0)

(defun package-refresh-and-install ()
  (interactive)
  (if (eql has_been_refreshed 0)
      (progn
	(package-refresh-contents)
	(setq has_been_refreshed 1)
	(call-interactively 'package-install)
	)
    (call-interactively 'package-install)))
