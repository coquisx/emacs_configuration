(c-add-style "my-style"
	     '("stroustrup"
	       (indent-tabs-mode . nil)
	       (c-basic-offset . 4)
;			   (c-offsets-alist . ((inline-open . 0)
;								   (brace-list-open . 0)
;								   (statement-case-open . +)))
	       ))							   

(defun my-c++-mode-hook ()
  (c-set-style "my-style")
  (auto-fill-mode)
  (c-toggle-auto-hungry-state 1))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)
