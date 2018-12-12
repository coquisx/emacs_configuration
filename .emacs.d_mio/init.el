


;;(require 'package)
;;(add-to-list 'package-archives
;;  '("melpa" . "http://melpa.milkbox.net/packages/") t)


;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages"))

;; Added by Package.el.  This must come before configurations of
;;(require 'sr-speedbar)

;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Tell emacs where is your personal elisp lib dir
(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
;;(add-to-list 'load-path "~/.emacs.d/lisp/" )



;; load the packaged named xyz.
;;(load "sr-speedbar.el") ;; best not to include the ending “.el” or “.elc”

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (sr-speedbar))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;; Custom variables
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;;; Custom settings
(setq settings-file (expand-file-name "settings.el" user-emacs-directory))

;;; Loads settings file
(when (file-exists-p custom-file)
  (load settings-file))

;; Require everything...
;;(require 'init-utils)
;;...
;;...
;;...

;;; Loads custom file
(when (file-exists-p custom-file)
  (load custom-file))


