; Emacs HotKeys -- H=HyperKey - f12=F12

(global-set-key (kbd "<f12> H-q") 'kill-emacs)
; Terminals & EditFiles-Commands:
(global-set-key (kbd "H-t") 'ansi-term)
(global-set-key (kbd "H-SPC") (lambda() (interactive)(find-file "~/.emacs")))
(global-set-key (kbd "H-`") (lambda() (interactive)(find-file "~/.home/.emacs-home.org")))
(global-set-key (kbd "H-m") 'minimap-mode)
(global-set-key (kbd "<f12> t") 'ansi-term)
(global-set-key (kbd "<f9> t") 'ansi-term)
(global-set-key (kbd "<f9> SPC") (lambda() (interactive)(find-file "~/.emacs")))
(global-set-key (kbd "<f12> `") (lambda() (interactive)(find-file "~/.home/.emacs-home.org")))
(global-set-key (kbd "<f9> `") (lambda() (interactive)(find-file "~/.home/.emacs-home.org")))

(global-set-key (kbd "<f12> k") (lambda() (interactive)(find-file "~/.emacs.d/KDG/KDG.el")))

(global-set-key (kbd "<f9> k") (lambda() (interactive)(find-file "~/.emacs.d/KDG/KDG.el")))

(global-set-key (kbd "<f12> m") 'minimap-mode)
(global-set-key (kbd "<f12> d") (lambda() (interactive) (dired "~/Desktop")))
(global-set-key (kbd "<f12> e") 'eshell)
(global-set-key (kbd "<f9> d") (lambda() (interactive) (dired "~/Desktop")))
(global-set-key (kbd "<f9> e") 'eshell)
(global-set-key (kbd "H-§") (lambda() (interactive) (load-file "~/.emacs")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TTY Only:
(global-set-key (kbd "<f12> m") 'menu-bar-open)
(global-set-key (kbd "<f9> m") 'menu-bar-open)
(global-set-key (kbd "<f9> <f9>") 'menu-bar-open)
