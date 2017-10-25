; Emacs HotKeys -- H=HyperKey - f12=F12
;(load-theme 'wombat t) ; Load Theme


;; For Testings:


;(global-set-key (kbd "<home>") 'next-buffer)
;(global-set-key (kbd "<end>") 'previous-buffer)


(global-set-key [<s-up>] 'buffer-menu) ; does not work
(global-set-key [<s-down>] 'other-window) ; does not work
























;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;     Old Testings:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(global-set-key (kbd "<f10>") nil) ; unset keys:
;((add-hook 'org-mode-hook (lambda () (local-set-key [[mouse-3]] 'org-cycle)))
;(global-set-key [mouse-7] 'buffer-menu)
;(global-set-key (kbd "S-Down") 'next-buffer)
;(global-set-key (kbd "s-up") 'previous-buffer)
;(global-set-key [mouse-6] 'menu-bar-open)


;(defun org-mode-keys ()
;  (local-set-key (kbd "<f10> q") 'org-open-at-point)
;(add-hook 'org-mode-hook 'org-mode-keys)

;(use-package org-mode
;	     (global-set-key (kbd "f9 z") 'menu-bar-open)
;	     :ensure t
;	     )

; mouse
;(global-set-key [mouse-3] 'mouse-popup-menubar-stuff)
;(global-set-key (kbd "C-c v") (kbd "C-u - 1 8 C-x ^")) ; works
