;; Basic Settings for all Emacs
;; =============== Remove hooks ===============
;; (remove-hook 'find-file-hook 'vc-find-file-hook)
;; =============== Global Varibles ===============
;;(require 'cl) ; a rare necessary use of REQUIRE

(defvar *emacs-load-start* (current-time))
(defvar myinit-dir "~/init")
(defvar myplugin-dir (concat myinit-dir "/eplugins"))
(defvar myautocomplete-dir (concat myinit-dir "/ac131"))
(add-to-list 'load-path myplugin-dir)
(add-to-list 'load-path (concat myplugin-dir "/epy"))
(add-to-list 'load-path (concat myplugin-dir "/icicles"))
(add-to-list 'load-path (concat myplugin-dir "/single-files"))
(require 'color-theme)
(ignore-errors (color-theme-arjen))

;; =============== Linum and color-theme ===============
(if (> emacs-major-version 22)
   (progn
	 (global-linum-mode t)
	 (global-visual-line-mode t)
	 (setq split-height-threshold nil) ; let emacs split horizontally for help
	 (setq split-width-threshold 0)
	 )
)

;; =============== Modes ===============
;; (iswitchb-mode t)
(display-time)
(global-font-lock-mode t)
(show-paren-mode t)
(menu-bar-mode 1)
(tool-bar-mode -1)
(recentf-mode 1)
(setq recentf-max-menu-items 15)
(global-set-key "\C-c\ \C-r" 'recentf-open-files)
;; =============== Variables ===============
(setq inhibit-splash-screen t)
(setq inhibit-startup-echo-area-message t)
(setq initial-major-mode 'text-mode)
(setq initial-scratch-message nil)
(setq inhibit-startup-message t)  ;; Disable Startup Message
(setq backup-inhibited t) 		;disable backup
(setq auto-save-default nil)    ;disable auto save
(setq scroll-margin 3 scroll-conservatively 10000 scroll-up-aggressively 0.01 scroll-down-aggressively 0.01)
(setq auto-window-vscroll nil)
(setq compilation-scroll-output t)
(setq vc-handled-backends nil)
(setq frame-title-format (list "%b %p  [%f] " (getenv "USERNAME") " %s %Z   " emacs-version))
(setq require-final-newline t)
(setq org-replace-disputed-keys t)
(fset 'yes-or-no-p 'y-or-n-p)  ;; ask by y or n
(setq tramp-default-method "ftp")

(setq-default tab-width 4)
(setq-default indent-tab-mod nil)
;; ==================== System Coding ====================
(setq buffer-file-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8-unix)
(setq default-keyboard-coding-system 'utf-8-unix)
(setq default-sendmail-coding-system 'utf-8-unix)
(setq default-terminal-coding-system 'utf-8-unix)

;; =============== Packages ===============
;(require 'eval-after-load)
;; =============== Require Packages ===============
(require 'highlight-chars)
(add-hook 'font-mode-lock-hook 'hc-hightlight-tabs)
(require 'cursor-chg) ; Load the library
(toggle-cursor-type-when-idle 1) ; Turn on cursor change when Emacs is idle
(change-cursor-mode 1) ; Turn on change for overwrite, read-only, and input mode
(curchg-change-cursor-when-idle-interval 5) ; change the idle timer
;(load-library "dvpython")
(load-file "~/init/emacs_keys.el")
;; ----------------------------------------
(defun switch-to-previous-buffer ()
      (interactive)
      (switch-to-buffer (other-buffer (current-buffer) 1)))

(require 'swbuff)
(require 'swbuff-x)
(setq swbuff-start-with-current-centered 1)
(global-set-key (kbd "C-l") 'swbuff-switch-to-next-buffer)
(global-set-key (kbd "M-l") 'swbuff-switch-to-previous-buffer)

;; ----------------------------------------

;; (global-unset-key (kbd "M-w"))
;; (global-set-key (kbd "M-w") 'copy-line)



;; =============== Modes and Hooks ===============
(setq ido-enable-flex-matching t)
(setq ido-everywhere)
(ido-mode t)

(autoload 'csv-mode "csv-mode")
(add-to-list 'auto-mode-alist '("\\.csv\\'" .csv-mode))

(autoload 'spice-mode "spice-mode")
(add-to-list 'auto-mode-alist '("\\.sp\\'" . spice-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . spice-mode))
(add-to-list 'auto-mode-alist '("\\.cir\\'" . spice-mode))
(add-to-list 'auto-mode-alist '("\\.tempy\\'" . spice-mode))

(autoload 'markdown-mode "markdown-mode")


(defun delete-completion-window-buffer (&optional output)
  (interactive)
  (dolist (win (window-list))
    (when (string= (buffer-name (window-buffer win)) "*Completions*")
      (delete-window win)
      (kill-buffer "*Completions*")))
  output)

(add-hook 'comint-preoutput-filter-functions 'delete-completion-window-buffer)

(defun split-horizontally-for-temp-buffers ()
  "Split the window horizontally for temp buffers."
  (when (and (one-window-p t)
        (not (active-minibuffer-window)))
   (split-window-horizontally)))
;(add-hook 'temp-buffer-setup-hook 'split-horizontally-for-temp-buffers)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

; could be bad, will not let you save at all, until you correct the error
 (add-hook 'emacs-lisp-mode-hook
  (function (lambda ()
   (add-hook 'local-write-file-hooks
    'check-parens))))

(add-hook 'org-mode-hook
          '(lambda ()
             (load-file "~/init/emacs_keys.el")))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-hook 'markdown-mode-hook
            (lambda ()
              (when buffer-file-name
                (add-hook 'after-save-hook
                          'check-parens
                          nil t))))

;; =============== Load Auto Complete ===============
(if (string-equal system-name "RPi")
 (load-library "load_ac131_linux"))

(if (eq system-type 'windows-nt)
  (progn
     (message "Loading windows init file")
     ;; (load-library "load_ac131_win")
     (set-frame-font "Monaco 12")
     (global-set-key (vector (list 'control mouse-wheel-up-event)) (lambda () (interactive) (text-scale-decrease 1)))
     (global-set-key (vector (list 'control mouse-wheel-down-event)) (lambda () (interactive) (text-scale-increase 1)))
   )
)

(if (eq system-type 'gnu/linux)
   (progn
    ;; (message "Loading gnu/linux init file")
    ;; (load-library "load_ac131_linux")
    ;; (load-library "load_ac131_teradyne")
		 (global-set-key (vector (list 'control mouse-wheel-up-event)) (lambda () (interactive) (text-scale-decrease 1)))
     (global-set-key (vector (list 'control mouse-wheel-down-event)) (lambda () (interactive) (text-scale-increase 1)))
   )

)

;; (message "My .emacs loaded in %.2fs" (destructuring-bind (hi lo ms) (current-time)
;;          (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))
