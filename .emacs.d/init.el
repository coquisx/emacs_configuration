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
