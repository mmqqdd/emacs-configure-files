;;; window-numbering-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "window-numbering" "window-numbering.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from window-numbering.el

(defvar window-numbering-mode nil "\
Non-nil if Window-Numbering mode is enabled.
See the `window-numbering-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `window-numbering-mode'.")

(custom-autoload 'window-numbering-mode "window-numbering" nil)

(autoload 'window-numbering-mode "window-numbering" "\
A minor mode that assigns a number to each window.

If called interactively, enable Window-Numbering mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "window-numbering" '("select-window-by-number" "window-numbering-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; window-numbering-autoloads.el ends here
