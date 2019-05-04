;; Fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Disable Menu Bar
(menu-bar-mode -1)

;; Disable tool-bar
(tool-bar-mode -1)

;; Disable startup-screen and message
(setq inhibit-startup-screen t)

;; Makes *scratch* empty.
(setq initial-scratch-message "")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *messages* from the buffer.
;;(setq-default message-log-max nil)
;;(kill-buffer "*Messages*")

;; Removes *Completions* from buffer after you've opened a file.
;;(add-hook 'minibuffer-exit-hook
;;      '(lambda ()
;;         (let ((buffer "*Completions*"))
;;           (and (get-buffer buffer)
;;                (kill-buffer buffer)))))

;; Don't show *Buffer list* when opening multiple files at the same time.
(setq inhibit-startup-buffer-menu t)

;; Show only one active window when opening multiple files at the same time.
(add-hook 'window-setup-hook 'delete-other-windows)

;; set keys to focus on another windows with rows and define prevous frame
(global-set-key (kbd "C-x p") 'previous-multiframe-window)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; set number line to be show
;;(global-linum-mode t)

;; Modo parentesis activado
(show-paren-mode)

;; Gestion de espacios en blanco
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Muestra numero de columna
(setq column-number-mode t)

;; Activa flycheck
;;(add-hook 'after-init-hook #'global-flycheck-mode)

;; guia de indice
;;(add-hook 'c++-mode-hook 'highlight-indent-guides-mode)
;;(setq highlight-indent-guides-method 'character)
;;(setq highlight-indent-guides-character ?\*)
;;(setq highlight-indentation-mode t)

;; change directory backup
;; No crees ficheros temporales xxx~
(setq make-backup-files nil)
;;(setq backup-directory-alist '(("." "~/.saves_emacs")))
(setq auto-save-file-name-transforms
;;      '((".*" "~/.cache/emacs/saves/" t)))
      '((".*" "~/.emacs.d/backups/" t)))

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)
;;(load-theme 'tango-dark t)
;;(load-theme 'panda t)
