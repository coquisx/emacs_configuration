
(require 'sr-speedbar)

(custom-set-variables
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-width 15)
 '(sr-speedbar-skip-other-window-p t)
 )

;; Always use the last selected window for loading files from speedbar.
(defvar last-selected-window
  (if (not (eq (selected-window) sr-speedbar-window))
      (selected-window)
    (other-window 1)))

                    ;(defun speedbar-buffers ()
                    ;  "show buffer list in the speedbar"
                    ;  (interactive)
                    ;  (speedbar-change-initial-expansion-list "quick buffers"))

                    ;(defun speedbar-files ()
                    ;  "show file list in the speedbar"
                    ;  (interactive)
                    ;  (speedbar-change-initial-expansion-list "files"))

(sr-speedbar-open)

(provide 'setup-sr-speedbar)
