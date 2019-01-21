;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Tell emacs where is your personal elisp lib dir
;;(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
(add-to-list 'load-path "~/.emacs.d/lisp/" )

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/"))

;; Function to load all *.el files in emacs directory
(load "~/.emacs.d/init.el")
(load "~/.emacs.d/custom-helm-projectile-config.el")
(load "~/.emacs.d/sr-speedbar-config.el")
(load "~/.emacs.d/cplusplus-mode.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(package-selected-packages (quote (helm-projectile projectile sr-speedbar)))
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-width 15 t))

;(setq backup-directory-alist '(("." . "/tmp")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



