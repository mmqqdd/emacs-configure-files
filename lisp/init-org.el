(setq org-agenda-files '("~/code/test"))


(require 'org)
(setq org-src-fontify-natively t)

(provide 'init-org)

(add-hook 'diary-display-hook 'diary-fancy-display)
(setq org-agenda-include-diary t)

(setq org-agenda-custom-commands
      '(("P" "Printed agenda"
         ((agenda "" ((org-agenda-span 7)                      ;; overview of appointments
                      (org-agenda-start-on-weekday nil)         ;; calendar begins today
                      (org-agenda-repeating-timestamp-show-all t)
                      (org-agenda-entry-types '(:timestamp :sexp))))
          (agenda "" ((org-agenda-span 1)                      ; daily agenda
                      (org-deadline-warning-days 7)            ; 7 day advanced warning for deadlines
                      (org-agenda-todo-keyword-format "[ ]")
                      (org-agenda-scheduled-leaders '("" ""))
                      (org-agenda-prefix-format "%t%s")))
          (todo "TODO"                                          ;; todos sorted by context
                ((org-agenda-prefix-format "[ ] %T: ")
                 (org-agenda-sorting-strategy '(tag-up priority-down))
                 (org-agenda-todo-keyword-format "")
                 (org-agenda-overriding-header "\nTasks by Context\n------------------\n"))))
         ((org-agenda-with-colors nil)
          (org-agenda-compact-blocks t)
          (org-agenda-remove-tags t)
          (ps-number-of-columns 2)
           (ps-landscape-mode t))
         ("~/agenda.ps"))
        ;; other commands go here
        ))
;;(package-initialize)

;;(with-eval-after-load 'org
  ;;(add-to-list 'org-export-backends 'md)


