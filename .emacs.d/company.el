(require 'company)
(require 'company-rtags)
(require 'company-irony-c-headers)

(setq rtags-completions-enabled t)
(eval-after-load 'company
  '(add-to-list
    'company-backends 'company-rtags))
(setq rtags-autostart-diagnostics t)
(rtags-enable-standard-keybindings)

;(require 'rtags-helm)
(require 'helm-rtags)
(setq rtags-use-helm t)

(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-backends (delete 'company-semantic company-backends))
(eval-after-load 'company
  '(add-to-list
;;    'company-backends 'company-irony-c-headers 'company-irony))
    'company-backends 'company-irony))

(setq rtags-path "/home/coco/workspace_git/rtags/bin")

(setq company-idle-delay 0)
(define-key c-mode-map [(tab)] 'company-complete)
(define-key c++-mode-map [(tab)] 'company-complete)

