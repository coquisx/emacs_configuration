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
(load "~/.emacs.d/helm.el")
(load "~/.emacs.d/projectile.el")
(load "~/.emacs.d/org.el")
(load "~/.emacs.d/undo-tree.el")
(load "~/.emacs.d/cplusplus.el")
(load "~/.emacs.d/company.el")
(load "~/.emacs.d/irony.el")
(load "~/.emacs.d/markdown.el")
(load "~/.emacs.d/cmake.el")

;; flycheck provoca algun error junto con el cmake-ide FIXME
;(load "~/.emacs.d/flycheck.el")
;(load "~/.emacs.d/cmake-ide.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-safe-themes
   (quote
    ("080fd60366fb1d6e7aea9f8fd0de03e2a40ac995e51b1ed21de37431d43b4d88" default)))
 '(org-agenda-files
   (quote
    ("/media/coco/Datos/org/guia_entorno.org" "/media/coco/Datos/org/guia.org" "/media/coco/Datos/org/agenda.org")) t)
 '(package-selected-packages
   (quote
    (cmake-project cmake-mode markdown-mode cmake-ide flycheck-irony flycheck-rtags flycheck company-irony-c-headers company-irony irony helm-rtags company-rtags company which-key highlight-indentation undo-tree helm-projectile helm))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
