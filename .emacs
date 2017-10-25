;(set-face-foreground 'modeline "yellow")
(require 'package) (package-initialize) (load-theme 'wombat t)
; Need for Melpa ~~ Added by Package.el ~~ Load my Theme
(load-file "~/.emacs.d/KDG/Buffer-HotKeys.el") ; Buffer-Commands -- move around..
(load-file "~/.emacs.d/KDG/Random-HotKeys.el") ; Open File & Terminal & other Things..
(load-file "~/.emacs.d/KDG/OrgMode-Settings.el") ; org-settings....
(load-file "~/.emacs.d/KDG/my-scratch.el") ; add line to scratch buffer
(load-file "~/.emacs.d/KDG/irc-erc.el")
(load-file "~/.emacs.d/KDG/Mac.el")
(load-file "~/.emacs.d/KDG/add-ons.el")
(load-file "~/.emacs.d/KDG/KDG.el") ; For Testing New Things..
(load-file "~/.emacs.d/KDG/eshell.el")

(setq browse-url-browser-function 'eww-browse-url) ;; browser 100% emacs

(defun text ()
  (interactive)
  (shell-command "open -n -a /Applications/TextEdit.app")) ; for Mac OS X

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(defun eshell/c ()
;  (let ((eshell-buffer-maximum-lines 0)) (eshell-truncate-buffer)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;hmm auto load Emacs-Home
;(unless window-system
;    (setq org-default-notes-file "~/.home/.emacs-home.org"
;    initial-buffer-choice  org-default-notes-file))
; backup-files
(setq backup-directory-alist `(("." . "~/.home/.emacs.d/saves")))
; no autosave
(setq auto-save-default nil)

;; Open files in dired mode using 'open'
(eval-after-load "dired"
  '(progn
     (define-key dired-mode-map (kbd "z")
       (lambda () (interactive)
         (let ((fn (dired-get-file-for-visit)))
           (start-process "default-app" nil "open" fn))))))

; Fix Trash for Dired on MacOSX (Out of Box Are: ~/.local/share/Trash)
(setq trash-directory "~/.Trash")

(if window-system (tool-bar-mode -1)) ;gui-only
(xterm-mouse-mode 1)
(delete-selection-mode 1) ; How can I replace highlighted text with what I type?

(global-set-key [mouse-4] '[up])
(global-set-key [mouse-5] '[down])
;; Comment Enable Mouse
(unless window-system)
  (global-set-key [S-mouse-4] '(lambda ()
                               (interactive)
                               (scroll-down 1)))
  (global-set-key [S-mouse-5] '(lambda ()
                               (interactive)
                               (sceoll-up 1)))

; Popup-Menu GUI
(define-key global-map (kbd "C-z")
  (lambda ()
    (interactive)
    (x-popup-menu (list '(0 0) (selected-frame))
                  (mouse-menu-bar-map))))

(add-to-list 'default-frame-alist '(height . 30))
(add-to-list 'default-frame-alist '(width . 88))

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-blinks 1)
 '(blink-cursor-interval 0.5)
 '(case-replace t)
 '(compilation-ask-about-save t)
 '(confirm-kill-emacs nil)
 '(cursor-type (quote hbar))
 '(custom-safe-themes
   (quote
    ("4fc8b48164cbad96d41de34d8ae0bfbbae39bc68e689b80caf12aa2cef51f72b" default)))
 '(delete-by-moving-to-trash t)
 '(erc-join-hook (quote (erc-nicklist)))
 '(erc-nick "KDG-ERC")
 '(erc-nicklist-use-icons nil)
 '(erc-port 6667)
 '(erc-prompt "ERC >")
 '(erc-server "irc.freenode.net")
 '(eshell-buffer-maximum-lines 80000)
 '(frame-background-mode nil)
 '(inhibit-startup-buffer-menu t)
 '(initial-buffer-choice "~/.home/.emacs-home.org")

 '(make-pointer-invisible nil)
 '(minibuffer-frame-alist (quote ((width . 80) (height . 3))))
 '(minimap-minimum-width 15)
 '(minimap-window-location (quote right))
 '(ns-function-modifier (quote hyper))
 '(ns-right-command-modifier (quote hyper))
 '(org-confirm-elisp-link-function (quote y-or-n-p))
 '(org-confirm-shell-link-function (quote y-or-n-p))
 '(org-link-frame-setup
   (quote
    ((vm . vm-visit-folder-other-frame)
     (vm-imap . vm-visit-imap-folder-other-frame)
     (gnus . org-gnus-no-new-news)
     (file . find-file-other-frame)
     (wl . wl-other-frame))))
 '(org-support-shift-select (quote always))
 '(package-selected-packages (quote (yasnippet)))
 '(rcirc-default-nick "KDG-rcirc")
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:weight extra-bold))))
 '(cfw:face-disable ((t :foreground "Blue" :inherit cfw:face-day-title)))
 '(cfw:face-header ((t (:foreground "#d0bf8f" :weight bold))))
 '(cfw:face-saturday ((t :foreground "#8cd0d3" :background "grey10" :weight bold)))
 '(cfw:face-sunday ((t :foreground "#cc9393" :background "grey10" :weight bold)))
 '(cfw:face-title ((t (:foreground "#f0dfaf" :weight bold :height 1.0 :inherit variable-pitch))))
 '(cfw:face-toolbar ((t :foreground "Steelblue4" :background "Steelblue4")))
 '(minibuffer-prompt ((t (:foreground "Red"))))
 '(tty-menu-disabled-face ((t (:background "#B3B3B3" :foreground "#4C4C4C"))))
 '(tty-menu-enabled-face ((t (:background "#B3B3B3" :foreground "Black"))))
 '(tty-menu-selected-face ((t (:background "#FFFFFF")))))
(put 'downcase-region 'disabled nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






