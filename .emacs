;(set-face-foreground 'modeline "yellow")
; Emacs HotKeys -- H=HyperKey - f12=F12
(require 'package) ; Need for Melpa
(package-initialize) ; Package support ~ Added by Package.el

(setq browse-url-browser-function 'eww-browse-url) ;; browser 100% emacs

(global-set-key (kbd "<f10>") nil) ; unset keys:
; Buffer-Commands -- move around..
(global-set-key (kbd "H-a") 'buffer-menu)
(global-set-key (kbd "H-x") 'next-buffer)
(global-set-key (kbd "H-z") 'previous-buffer)
(global-set-key (kbd "H-s") 'other-window)
(global-set-key (kbd "<f12> a") 'buffer-menu)
(global-set-key (kbd "<f12> x") 'next-buffer)
(global-set-key (kbd "<f12> z") 'previous-buffer)
(global-set-key (kbd "<f12> s") 'other-window)
(global-set-key [wheel-right] 'next-buffer)
(global-set-key [wheel-left] 'previous-buffer)
(global-set-key (kbd "<f12> H-q") 'kill-emacs)
; Terminals & EditFiles-Commands:
(global-set-key (kbd "H-t") 'ansi-term)
(global-set-key (kbd "H-SPC") (lambda() (interactive)(find-file "~/.emacs")))
(global-set-key (kbd "H-`") (lambda() (interactive)(find-file "~/.home/.emacs-home.org")))
(global-set-key (kbd "H-m") 'minimap-mode)
(global-set-key (kbd "<f12> t") 'ansi-term)
(global-set-key (kbd "<f10> SPC") (lambda() (interactive)(find-file "~/.emacs")))
(global-set-key (kbd "<f12> `") (lambda() (interactive)(find-file "~/.home/.emacs-home.org")))
(global-set-key (kbd "<f12> m") 'minimap-mode)
(global-set-key (kbd "<f12> d") (lambda() (interactive) (dired "~/Desktop")))
(global-set-key (kbd "<f12> e") 'eshell)
(global-set-key (kbd "H-§") (lambda() (interactive) (load-file "~/.emacs")))
; org-mode-commands:
(global-set-key (kbd "H-q") 'org-open-at-point)
(global-set-key (kbd "<f12> q") 'org-open-at-point)
(global-set-key (kbd "<f12> §") 'org-toggle-link-display)

; TTY Only:
(global-set-key (kbd "<f12> m") 'menu-bar-open)
(global-set-key (kbd "<f10> m") 'menu-bar-open)



;(defun org-mode-keys ()
;  (local-set-key (kbd "<f10> q") 'org-open-at-point)
;(add-hook 'org-mode-hook 'org-mode-keys)

;(add-hook 'org-mode-hook
;	  (lambda ()
;	    (define-key org-mode-map "H-q" 'org-open-at-point)))
;	    (local-set-key "<f12> q" 'org-open-at-point)
;	    (local-set-key "<f12> §" 'org-toggle-link-display)))

;(define-key org-mode-map (kbd "H-q") 'org-open-at-point)

; mouse
;(global-set-key [mouse-3] 'mouse-popup-menubar-stuff)
;(global-set-key (kbd "C-c v") (kbd "C-u - 1 8 C-x ^")) ; works
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file "~/.emacs.d/erc-nicklist2.el") 
; (load-file "~/.emacs.d/org-irc.el") ; irc-org link does not work :(
;(load-file "~/.emacs.d/erc-irc.el")

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(require 'pbcopy)
(turn-on-pbcopy)
(require 'weechat)

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

;; set keys for Apple keyboard, for emacs in OS X
(setq mac-command-modifier 'super) ; make cmd key do Meta
(setq mac-option-modifier 'meta) ; make opt key do Super
(setq mac-control-modifier 'control) ; make Control key do Control
(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper -- This One I Only USeing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-blinks 1)
 '(blink-cursor-interval 0.5)
 '(case-replace t)
 '(compilation-ask-about-save t)
 '(confirm-kill-emacs nil)
 '(cursor-type (quote hbar))
 '(custom-enabled-themes (quote (wombat)))
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
 '(initial-scratch-message
   ";-*- mode: org -*-
;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.
;; editTestByKDG
   ")
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
 '(tty-menu-disabled-face ((t (:background "#EDEDED" :foreground "Gray"))))
 '(tty-menu-enabled-face ((t (:background "#EDEDED" :foreground "Black"))))
 '(tty-menu-selected-face ((t (:background "Cyan")))))
(put 'downcase-region 'disabled nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cal
(require 'calfw-ical)
;; First day of the week
    (setq calendar-week-start-day 1) ; 0:Sunday, 1:Monday

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IRC

(setq erc-hide-list '("JOIN" "PART" "QUIT"))



(defmacro unpack-color (color red green blue &rest body)
  `(let ((,red   (car ,color))
         (,green (car (cdr ,color)))
         (,blue  (car (cdr (cdr ,color)))))
     ,@body))

(defun rgb-to-html (color)
  (unpack-color color red green blue
   (concat "#" (format "%02x%02x%02x" red green blue))))

(defun hexcolor-luminance (color)
  (unpack-color color red green blue
   (floor (+ (* 0.299 red) (* 0.587 green) (* 0.114 blue)))))

(defun invert-color (color)
  (unpack-color color red green blue
   `(,(- 255 red) ,(- 255 green) ,(- 255 blue))))

(defun erc-get-color-for-nick (nick dark)
  (let* ((hash     (md5 (downcase nick)))
         (red      (mod (string-to-number (substring hash 0 10) 16) 256))
         (blue     (mod (string-to-number (substring hash 10 20) 16) 256))
         (green    (mod (string-to-number (substring hash 20 30) 16) 256))
         (color    `(,red ,green ,blue)))
    (rgb-to-html (if (if dark (< (hexcolor-luminance color) 85)
                       (> (hexcolor-luminance color) 170))
                     (invert-color color)
                   color))))

(defun erc-highlight-nicknames ()
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "\\w+" nil t)
      (let* ((bounds (bounds-of-thing-at-point 'symbol))
             (nick   (buffer-substring-no-properties (car bounds) (cdr bounds))))
        (when (erc-get-server-user nick)
          (put-text-property
           (car bounds) (cdr bounds) 'face
           (cons 'foreground-color (erc-get-color-for-nick nick 't))))))))

(add-hook 'erc-insert-modify-hook 'erc-highlight-nicknames)

(defun eshell/c ()
  "Clear the eshell buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






