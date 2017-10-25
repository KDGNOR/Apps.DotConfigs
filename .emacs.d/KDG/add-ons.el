;;;;;;;;;;;;;;;
;;; ADD-ONS ;;;
;;;;;;;;;;;;;;;
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Cal
(require 'calfw-ical)
;; First day of the week
    (setq calendar-week-start-day 1) ; 0:Sunday, 1:Monday
