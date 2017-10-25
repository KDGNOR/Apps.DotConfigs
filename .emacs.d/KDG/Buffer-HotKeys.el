; Emacs HotKeys -- H=HyperKey - f12=F12

;; Buffer Keyboard Settings:
(global-set-key (kbd "H-a") 'buffer-menu)
;(global-set-key (kbd "H-x") 'next-buffer)
;(global-set-key (kbd "H-z") 'previous-buffer)
(global-set-key (kbd "H-z") 'other-window)
(global-set-key (kbd "<f12> a") 'buffer-menu)
(global-set-key (kbd "<f12> <right>") 'next-buffer)
(global-set-key (kbd "<f12> <left>") 'previous-buffer)
(global-set-key (kbd "<f12> z") 'other-window)
(global-set-key (kbd "<f9> a") 'buffer-menu)
(global-set-key (kbd "<f9> <right>") 'next-buffer)
(global-set-key (kbd "<f9> <left>") 'previous-buffer)
(global-set-key (kbd "<f9> z") 'other-window)
;; Buffer Mouse Settings: 
(global-set-key [wheel-right] 'next-buffer)
(global-set-key [wheel-left] 'previous-buffer)
(global-set-key [mouse-2] 'buffer-menu)


;; my setup only
(global-unset-key (kbd "<home>"))
(global-set-key (kbd "<home>") 'next-buffer)
(global-unset-key (kbd "<end>"))
(global-set-key (kbd "<end>") 'previous-buffer)
