(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)


(global-linum-mode t)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8wc" "allen7wang")
					    ;; emacs regex
					    ))

(setq make-backup-files nil)

(setq auto-save-default nil)


(recentf-mode  1)
(setq recentf-max-menu-items 25)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)



(provide 'init-better-defaults)
