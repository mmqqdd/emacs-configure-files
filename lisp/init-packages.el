(package-initialize)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
                      ;; --- Auto-completion ---
                      company
                      smex
                      ;; --- Better Editor ---
                      hungry-delete
                      swiper
                      counsel
                      smartparens
                      ;; --- Major Mode ---
                      js2-mode
                      ;; --- Minor Mode ---
                      nodejs-repl
                      exec-path-from-shell
                      ;; --- Themes ---
                      monokai-theme
                      ;; solarized-theme
                      window-numbering
                      company
                      web-mode
                      popwin
                      python-mode
                      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(linux ns))
  (exec-path-from-shell-initialize))

;;
(global-company-mode t)

(require 'popwin)
(popwin-mode t)
;;
(require 'smartparens-config)
(add-hook 'js-mode-hook #'smartparens-mode)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(add-hook 'c++-mode-hook 'smartparens-mode)
;;
(require 'hungry-delete)
(global-hungry-delete-mode)
(require 'nodejs-repl)
;;
(require 'window-numbering)
(window-numbering-mode 1)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))

(defun my-web-mode-indent-setup ()
  (setq web-mode-markup-indent-offset 4) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset 4)    ; web-mode, css in html file
  (setq web-mode-code-indent-offset 4)   ; web-mode, js code in html file
  )
(add-hook 'web-mode-hook 'my-web-mode-indent-setup)

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)


;;(python-mode
;; :fetcher gitlab
;; :repo "python-mode-devs/python-mode"
;; :files ("python-mode.el" ("completion" "completion/pycomplete.*")))

(provide 'init-packages)

