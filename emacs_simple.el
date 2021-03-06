
;; =============== Modes ===============
(iswitchb-mode t)
(display-time)
(global-visual-line-mode t)
(global-font-lock-mode t)
(show-paren-mode t)
(menu-bar-mode -1)
(tool-bar-mode -1)
;; =============== Variables ===============
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message "pi")
(setq initial-major-mode 'text-mode)
(setq initial-scratch-message nil)
(setq inhibit-startup-message t)  ;; Disable Startup Message
(setq backup-inhibited t) 		;disable backup
(setq auto-save-default nil)    ;disable auto save
(setq scroll-margin 5 scroll-step 1 scroll-conservatively 10000 scroll-up-aggressively 0.01 scroll-down-aggressively 0.01 scroll-preserve-screen-position 1)
(setq auto-window-vscroll nil)
(setq split-height-threshold nil) ; let emacs split horizontally for help
(setq split-width-threshold 0)
(setq tab-width 2)
(setq compilation-scroll-output t)
(setq vc-handled-backends nil)
(setq frame-title-format (list "%b %p  [%f] " (getenv "USERNAME") " %s %Z   " emacs-version))
(setq require-final-newline t)
(fset 'yes-or-no-p 'y-or-n-p)  ;; ask by y or n

(setq ido-enable-flex-matching t)
(setq ido-everywhere)
(ido-mode t)
(global-linum-mode 1)

(setq redisplay-dont-pause t
  scroll-margin 5
  scroll-step 1
  scroll-conservatively 10000
  scroll-preserve-screen-position 1)
(setq shift-select-mode t)
  
;; =============== Keys ===============
(global-set-key "\C-j" 'backward-char)
(global-set-key "\C-k" 'forward-char)
(global-set-key (kbd "M-k") 'forward-word)
(global-set-key (kbd "M-j") 'backward-word)
(global-set-key (kbd "C-v") 'yank)


(global-set-key (kbd "C-q") 'suspend-emacs)
(global-set-key (kbd "M-q") 'toggle-read-only)
(global-set-key "\C-o" 'other-window)
(defalias 'redo 'undo-tree-redo)
(global-set-key "\C-z" 'undo)
(global-set-key "\C-y" 'redo)
(global-set-key (kbd "M-k") 'forward-word)
(global-set-key (kbd "M-j") 'backward-word)
(global-set-key (kbd "M-n")     ; page down
  (lambda () (interactive)
    (condition-case nil (scroll-up)
      (end-of-buffer (goto-char (point-max))))))
(global-set-key (kbd "M-p")
  (lambda () (interactive) ; page up
    (condition-case nil (scroll-down)
      (beginning-of-buffer (goto-char (point-min))))))

      
(global-set-key [next]
    (lambda () (interactive)
      (condition-case nil (scroll-up)
        (end-of-buffer (goto-char (point-max))))))
  
  (global-set-key [prior]
    (lambda () (interactive)
      (condition-case nil (scroll-down)
        (beginning-of-buffer (goto-char (point-min))))))
      
(define-key global-map "\M-[1~" 'beginning-of-line)
(define-key global-map [select] 'end-of-line)      
(global-unset-key [(f9)])
(global-set-key [(f9)]	(lambda()(interactive) (switch-to-buffer "*scratch*")))
(global-unset-key [(f11)])
(global-set-key [(f11)]
		(lambda() (interactive) (find-file "~/.emacs")))
(global-set-key [(f12)] (lambda()
		(interactive)(save-some-buffers (buffer-file-name)) (eval-buffer))) ;; evaluate buffer

(defun my-kill-ring-save (beg end flash)
  (interactive (if (use-region-p)
                   (list (region-beginning) (region-end) nil)
                 (list (line-beginning-position)
                       (line-beginning-position 2) 'flash)))
  (kill-ring-save beg end)
  (when flash
    (save-excursion
      (if (equal (current-column) 0)
          (goto-char end)
        (goto-char beg))
      (sit-for blink-matching-delay))))
(global-set-key [remap kill-ring-save] 'my-kill-ring-save)

(put 'kill-region 'interactive-form      
 '(interactive
   (if (use-region-p)
       (list (region-beginning) (region-end))
     (list (line-beginning-position) (line-beginning-position 2)))))
         
        
(message (format "%s" system-type))        
