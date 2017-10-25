(require 'erc) ; This one are needed
(condition-case nil
    (require 'erc-bbdb)
  (error nil))
(eval-when-compile (require 'cl))
;; comment...

;; joining && autojoing

;; make sure to use wildcards for e.g. freenode as the actual server
;; name can be be a bit different, which would screw up autoconnect
(erc-autojoin-mode t)
(setq erc-autojoin-channels-alist
  '((".*\\.freenode.net" "#linuxdistrocommunity" "#spatry" "#jupiterbroadcasting")))

;; don't show any of this
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))

;; make a new command.
(defun djcb-erc-start-or-switch ()
  "Connect to ERC, or switch to last active buffer"
  (interactive)
  (if (get-buffer "irc.freenode.net:6667") ;; ERC already active?

    (erc-track-switch-buffer 1) ;; yes: switch to last active
    (when (y-or-n-p "Start ERC? ") ;; no: maybe start ERC
      (erc :server "irc.freenode.net" :port 6667 :nick "kdg-erc" :full-name "emacs")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; switch to ERC with Ctrl+c e
;;(global-set-key (kbd "C-c e") 'djcb-erc-start-or-switch) ;; ERC
      
