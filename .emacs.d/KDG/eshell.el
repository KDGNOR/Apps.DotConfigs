; eshell functions

(defun eshell/c () ; clear alias
  (let ((eshell-buffer-maximum-lines 0)) (eshell-truncate-buffer)))

;(defalias 'la 'ls -a)

;(defun eshell/.alias ()
;(lambda() (interactive) (fine-file "~/.emacs.d/KDG/eshell.el")))

(setq eshell-prompt-function
  (lambda nil
    (concat
     (eshell/pwd)
     " $ ")))


;(setq eshell-prompt-function
;  (lambda ()
;    (concat (format-time-string "%H:%M ~ %d/%m/%Y " (current-time))
 ;     (if (= (user-uid) 0) " # " " $ "))))
