
(package-initialize)


(add-to-list 'load-path "~/.emacs.d/lisp/")

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))



;;(require 'init-packages)
;;(require 'init-ui)
;;(require 'init-better-defaults)  
;;(require 'init-org)
;;(require 'init-keybindings)
;;(require 'custom)
;;(require 'entertainment)
(load "init-packages")
(load "init-ui")
(load "init-better-defaults")
(load "init-org")
(load "init-keybindings")
(load "custom")
(load "entertainment")
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el" user-emacs-directory))
(load-file custom-file)
(put 'upcase-region 'disabled nil)
