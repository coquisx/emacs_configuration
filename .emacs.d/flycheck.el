(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)

(require 'flycheck-rtags)

(defun my-flycheck-rtags-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nill) ;; RTags creates more accurate overlays.
  (setq-local flycheck-check-syntax-automatically nill)
  )
;; c-mode-common-hook is also called by c++-mode
(add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)
;;(add-hook 'c++-mode #'my-flycheck-rtags-setup)
;;(add-hook 'c++-mode 'my-flycheck-rtags-setup)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(provide 'flycheck)
;;; flycheck.el ends here

