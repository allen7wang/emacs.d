(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )

  ;;add whatever packages you want here
  (defvar a7w/packages '(
			 company
			 monokai-theme
			 hungry-delete
			 swiper
			 counsel
			 smartparens
			 js2-mode
			 nodejs-repl
			 exec-path-from-shell
			 popwin

			 ) "Default packages")
(setq package-seleted-packages a7w/packages)


  (defun a7w/packages-installed-p ()
    (loop for pkg in a7w/packages  
         when (not (package-installed-p pkg)) do (return nil)
         finally(return t)))

  (unless (a7w/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg a7w/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;; let emacs find executable function
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(require 'hungry-delete)
(global-hungry-delete-mode)
 ;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; nodejs-repl
(require 'nodejs-repl)

;;config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-company-mode t)

(load-theme 'monokai t)

(require 'popwin)   ;;when require, when (setq company-minimum-prefix-length 1) not require
(popwin-mode t)


(provide 'init-packages)
