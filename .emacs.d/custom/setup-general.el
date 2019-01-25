;(menu-bar-mode -1)
;(tool-bar-mode -1)

;; Fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Set tango-dark theme
(load-theme 'tango-dark t)

;; No crees ficheros temporales xxx~
;(setq make-backup-files nil)

;(defvar --backup-directory (concat user-emacs-directory "backups"))
;(if (not (file-exists-p --backup-directory))
;        (make-directory --backup-directory t))
;(setq backup-directory-alist `(("." . ,--backup-directory)))
;(setq make-backup-files t               ; backup of a file the first time it is saved.
;      backup-by-copying t               ; don't clobber symlinks
;      version-control t                 ; version numbers for backup files
;      delete-old-versions t             ; delete excess backup files silently
;      delete-by-moving-to-trash t
;      kept-old-versions 6               ; oldest versions to keep when a new numbered backup is made (default: 2)
;      kept-new-versions 9               ; newest versions to keep when a new numbered backup is made (default: 2)
;      auto-save-default t               ; auto-save every buffer that visits a file
;      auto-save-timeout 20              ; number of seconds idle time before auto-save (default: 30)
;      auto-save-interval 200            ; number of keystrokes between auto-saves (default: 300)
;      )

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;; Compilation
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))

;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;; company
(use-package company
  :init
  (global-company-mode 1)
  (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;; Package: projejctile
(use-package projectile
  :init
  (projectile-global-mode)
  (setq projectile-enable-caching t))

;; Package zygospore
(use-package zygospore
  :bind (("C-x 1" . zygospore-toggle-delete-other-windows)
         ("RET" .   newline-and-indent)))

  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)
(windmove-default-keybindings)

(provide 'setup-general)
