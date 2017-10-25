; Emacs HotKeys -- H=HyperKey - f12=F12

;org-mode-commands:
(global-set-key [mouse-3] 'org-cycle)

(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "H-q") 'org-open-at-point)))
(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "<f12> q") 'org-open-at-point)))
(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "<f9> q") 'org-open-at-point)))

(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "<f12> §") 'org-toggle-link-display)))
(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "<f9> §") 'org-toggle-link-display)))

(add-hook 'org-mode-hook (lambda () (local-set-key (kbd "H-b") 'new-frame)))
(add-hook 'org-mode-hook (lambda () (local-set-key [(control tab)] 'new-frame))) ;no-tty
