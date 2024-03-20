;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alex Bellon"
      user-mail-address "emacs@alex-bellon.com")

(setq doom-theme 'doom-one)

(setq display-line-numbers-type t)
(setq org-hide-emphasis-markers t)
(setq org-startup-with-inline-images t)

(after! org
  (setq org-todo-keywords
        '((sequence "TODO" "EVENT" "PROG" "WAIT" "MOVE" "|" "DONE" "CANC")))
  (setq org-todo-keyword-faces
        '(("PROG" . "yellow") ("WAIT" . "yellow") ("MOVE" . "orange")
        ("CANC" . (:foreground "red" :weight bold)))))

(require 'org-journal)
(setq org-journal-dir "~/GitHub/planner/"
      org-journal-file-format "%Y-%m-%d.org")
(setq org-journal-date-format "%a %b %d")
(setq org-journal-carryover-items "TODO=\"TODO\"|TODO=\"PROG\"|TODO=\"WAIT\"")

(map! :n "C-="    #'text-scale-increase
      :n "C--"    #'text-scale-decrease)

(setq org-fold-core-style 'overlays)
