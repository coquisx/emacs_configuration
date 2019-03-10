;; Establece los ficheros org
(setq org-agenda-files (list "~/org/guia.org"))
(setq org-agenda-files (list "~/org/organizer.org"))

(set-register ?o (cons 'file "~/org/organizer.org"))
(set-register ?g (cons 'file "~/org/guia.org"))

;; Las siguiente líneas son siempre necesarias. Elige
;; tus propias claves
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
