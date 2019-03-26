;; Establece los ficheros org
;;(setq org-directory "~/org/"))
(setq org-agenda-files (list "~/org/guia.org"
			     "~/org/guia_emacs.org"
			     "~/org/guia_git.org"))
(setq org-agenda-files (list "~/org/organizer.org"
			     "~/org/organizer2.org"))

(set-register ?o (cons 'file "~/org/organizer.org"))
(set-register ?g (cons 'file "~/org/guia.org"))

;; Las siguiente líneas son siempre necesarias. Elige
;; tus propias claves
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; Habilita el log de tareas DONE
(setq org-log-done t)

;; Establece nuevas secuencia de tareas
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "DONE" "CANCELED")))
(setq org-todo-keyword-faces
      '(("IN-PROGRESS" . "dark orange") ("WAITING" . "gold") ("CANCELED" . "gray")))

(setq org-tag-alist '(("@ucs" . ?u)
		      ("@emacs" . ?e)
		      ("@sls" . ?s)))
