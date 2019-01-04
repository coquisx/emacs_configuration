;; Fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Disable Menu Bar
(menu-bar-mode -1)

;; Disable tool-bar
(tool-bar-mode -1)

;; Disable startup-scree
(setq inhibit-startup-screen t)

;; Set tango-dark theme
(load-theme 'tango-dark t)
;(setq custom-enabled-themes (quote (tango-dark))))
; '(package-selected-packages (quote (sr-speedbar)))
 ;'(tab-width 4))
