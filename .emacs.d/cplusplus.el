(setq c-max-one-liner-length 80)

(setq fill-column 80)
(setq c-ignore-auto-fill (quote (string cpp)))

(c-add-style "my-style"
	     '("stroustrup"
	       (indent-tabs-mode . nil)
	       (c-basic-offset . 4)
	       (c-offsets-alist . ((inline-open . 0)
				   (brace-list-open . 0)
				   (statement-case-open . +)))
	       ))

(defun my-c++-mode-hook ()
  (c-set-style "my-style")
  ;;  (auto-fill-mode)
  ;;  (c-toggle-auto-hungry-state 1)
  )

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(add-hook 'c-mode-hook 'my-c++-mode-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
