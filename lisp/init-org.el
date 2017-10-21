(require 'org)

(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/Documents/Org/Agenda"))
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-org)
