(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode 1)
;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

(set-face-attribute 'default nil :height 150)

(global-hl-line-mode 1)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;
(global-set-key [(f9)] 'loop-alpha)
(setq alpha-list '((100 100) (75 45) (65 35)(55 25)(45 15)  ))
(defun loop-alpha ()
  (interactive)
  (let ((h (car alpha-list)))                 ;; head value will set to
    ((lambda (a ab)

       (set-frame-parameter (selected-frame) 'alpha (list a ab))
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
       ) (car h) (car (cdr h)))
    (setq alpha-list (cdr (append alpha-list (list h))))
    )
  )

;;clear-buffer
(defun eshell-clear-buffer ()
  "Clear terminal"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(setq-default indent-tabs-mode nil) ; tab 改为插入空格
(setq c-basic-offset 4) ; c c++ 缩进4个空格
(setq c-default-style "linux"); 没有这个 { } 就会瞎搞
(setq default-tab-width 4)
(put 'erase-buffer 'disabled nil)


;;(abbrev-mode t)

(provide 'init-ui)
