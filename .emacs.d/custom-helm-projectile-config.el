(require 'projectile)
(projectile-global-mode)

;(setq projectile-indexing-method 'alien)
;(setq projectile-indexing-method 'alien)
(setq projectile-indexing-method 'native)

(setq projectile-completion-system 'helm)
(setq projectile-enable-caching nil)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)
(helm-projectile-on)
