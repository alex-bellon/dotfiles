;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alex Bellon"
      user-mail-address "emacs@alex-bellon.com")

(setq doom-theme 'doom-one)

(setq display-line-numbers-type t)
(setq org-hide-emphasis-markers t)

(after! org
  (setq org-todo-keywords
        '((sequence "TODO" "EVENT" "WAIT" "VERIF" "|" "DONE" "CANC" "MOVED"))))

(require 'org-journal)
(setq org-journal-dir "~/GitHub/planner/day/"
      org-journal-file-format "%Y/%m/%d.org")

; Trying to fix overlap issue of C-c ! for inactive timestamp
;(define-key flycheck-mode-map (kbd "C-c ! !") 'org-time-stamp-inactive)

;(setq org-directory "~/GitHub/planner")
;(setq org-agenda-files (directory-files-recursively "~/GitHub/planner/day/" "org"))

