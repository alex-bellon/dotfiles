;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Alex Bellon"
      user-mail-address "emacs@alex-bellon.com")

(setq doom-theme 'doom-one)

(setq display-line-numbers-type t)
(setq org-hide-emphasis-markers t)

(after! org
  (setq org-todo-keywords
        '((sequence "TODO" "EVENT" "PROG" "WAIT" "MOVE" "|" "DONE" "CANC")))
  (setq org-todo-keyword-faces
        '(("PROG" . "yellow") ("WAIT" . "yellow") ("MOVE" . "orange")
        ("CANC" . (:foreground "blue" :weight bold)))))

(require 'org-journal)
(setq org-journal-dir "~/GitHub/planner/day/"
      org-journal-file-format "%Y/%m/%d.org")

(setq org-directory "~/GitHub/planner")
(setq org-agenda-files (directory-files-recursively "~/GitHub/planner/day/" "org"))

