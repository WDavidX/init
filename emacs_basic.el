;; Basic Settings for all Emacs
;; =============== Remove hooks ===============
;; (remove-hook 'find-file-hook 'vc-find-file-hook)
;; =============== Global Varibles ===============
(if (eq system-type 'windows-nt)
  (defvar myinit-dir "~/init")
  (defvar myinit-dir "~/init"))
(defvar myplugin-dir (concat myinit-dir "/eplugins"))
(defvar myautocomplete-dir (concat myinit-dir "/ac131"))
(add-to-list 'load-path myplugin-dir)
(add-to-list 'load-path (concat myplugin-dir "/epy"))
(add-to-list 'load-path (concat myplugin-dir "/icicles"))
(add-to-list 'load-path (concat myplugin-dir "/single-files"))
(require 'eval-after-load)
;; =============== Modes ===============
;; (iswitchb-mode t)
(display-time)
(global-linum-mode t)
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
(setq scroll-margin 3 scroll-conservatively 10000 scroll-up-aggressively 0.01 scroll-down-aggressively 0.01)
(setq auto-window-vscroll nil)
(setq split-height-threshold nil) ; let emacs split horizontally for help
(setq split-width-threshold 0)
(setq tab-width 2)
(setq compilation-scroll-output t)
(setq vc-handled-backends nil)
(setq frame-title-format (list "%b %p  [%f] " (getenv "USERNAME") " %s %Z   " emacs-version))
(setq require-final-newline t)
(fset 'yes-or-no-p 'y-or-n-p)  ;; ask by y or n
(setq tramp-default-method "ftp")

;; ==================== System Coding ====================
(setq buffer-file-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8-unix)
(setq default-keyboard-coding-system 'utf-8-unix)
(setq default-sendmail-coding-system 'utf-8-unix)
(setq default-terminal-coding-system 'utf-8-unix)

;; =============== Packages ===============
;(require 'eval-after-load)
(ignore-errors (require 'spice-mode))
;; =============== Require Packages ===============
(require 'buff-menu+)
(require 'cursor-chg) ; Load the library
(toggle-cursor-type-when-idle 1) ; Turn on cursor change when Emacs is idle
(change-cursor-mode 1) ; Turn on change for overwrite, read-only, and input mode
(curchg-change-cursor-when-idle-interval 5) ; change the idle timer
(load-library "dvpython")
;; =============== Keys ===============
(global-set-key (kbd "C-q") 'suspend-emacs)
(global-set-key (kbd "M-q") 'toggle-read-only)
(global-set-key "\C-o" 'other-window)
(defalias 'redo 'undo-tree-redo)
(global-set-key "\C-z" 'undo)
(global-set-key "\C-y" 'redo)
(global-unset-key "\C-j")
(global-set-key "\C-j" 'backward-char)
(global-set-key "\C-k" 'forward-char)
(global-set-key (kbd "M-k") 'forward-word)
(global-set-key (kbd "M-j") 'backward-word)
(global-set-key (kbd "C-S-j") 'backward-word)
(global-set-key (kbd "C-S-k") 'forward-word)
(global-unset-key (kbd "C-x 2"))
(global-set-key (kbd "C-x 2") 'split-window-horizontally)
(global-set-key (kbd "M-o") 'delete-other-windows)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "M-m") 'set-mark-command)
(define-key global-map (kbd "RET") 'newline-and-indent)
(global-unset-key (kbd "M-w"))
(global-set-key (kbd "M-w") 'delete-other-windows)
(global-set-key "\M-z" 'repeat-complex-command)
;; ----------------F Keys ------------------------

(global-unset-key [(f11)])
(global-set-key [(f11)]
		(lambda() (interactive) (find-file "~/init/emacs_basic.el")))
(global-set-key [(f12)] (lambda()
		(interactive)(save-some-buffers (buffer-file-name)) (eval-buffer))) ;; evaluate buffer

;(setq inhibit-startup-echo-area-message nil)
; The Backspace key: Control-? (127)
; The Home and End keys: Standard
; The Function keys and keypad: ESC[n~
; Emacs fix in putty
(define-key global-map "\M-[1~" 'beginning-of-line)
(define-key global-map [select] 'end-of-line)
;; =============== Functions and kbd ===============
;; ----------------------------------------
;; (global-set-key (kbd "M-l") (lambda() (interactive) (end-of-visual-line)(eval-last-sexp))
;; (global-set-key (kbd "M-l") 'eval-last-sexp)
;; ----------------------------------------
(global-set-key (kbd "M-n")     ; page down
  (lambda () (interactive)
    (condition-case nil (scroll-up)
      (end-of-buffer (goto-char (point-max))))))
(global-set-key (kbd "M-p")
  (lambda () (interactive) ; page up
    (condition-case nil (scroll-down)
      (beginning-of-buffer (goto-char (point-min))))))
(global-unset-key [(f9)])
(global-set-key [(f9)]	(lambda()(interactive) (switch-to-buffer "*scratch*")))
;; ----------------------------------------
(defun onekey-compile ()
   "Compile current buffer"
  (save-some-buffers (buffer-file-name))
  (interactive)
  (let (filename suffix progname compiler)
    (setq filename (file-name-nondirectory buffer-file-name))
    (setq progname (file-name-sans-extension filename))
    (setq suffix (file-name-extension filename))
    (if (string= suffix "c") (setq compiler (concat "gcc -std=c99 -g -Wall -o " progname " ")))
    (if (or (string= suffix "cc") (string= suffix "cpp"))
		(setq compiler (concat "g++ -g -Wall -std=c99 -o " progname " ")))
    (if (string= suffix "tex") (setq compiler "pdflatex "))
    (if (string= suffix "py") (setq compiler "python "))
    (if (string= suffix "sp") (setq compiler "hspice "))
    (if (string= suffix "el") (eval-buffer) (compile (concat compiler filename)))))
(global-unset-key (kbd "C-b"))
(global-set-key (kbd "C-b") 'onekey-compile)
;; ----------------------------------------
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))
(global-unset-key (kbd "C-_"))
(global-set-key (kbd "C-_") 'comment-or-uncomment-region-or-line)

;; set new method of kill a whole line
(defadvice kill-ring-save (before slickcopy activate compile)
  "When called interactively with no active region, copy a single line instead."
 (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))
(defadvice kill-region (before slickcut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

(defun copy-line (arg)
    "Copy lines (as many as prefix argument) in the kill ring.
      Ease of use features:
      - Move to start of next line.
      - Appends the copy on sequential calls.
      - Use newline as last char even on the last line of the buffer.
      - If region is active, copy its lines."
    (interactive "p")
    (let ((beg (line-beginning-position))
          (end (line-end-position arg)))
      (when mark-active
        (if (> (point) (mark))
            (setq beg (save-excursion (goto-char (mark)) (line-beginning-position)))
          (setq end (save-excursion (goto-char (mark)) (line-end-position)))))
      (if (eq last-command 'copy-line)
          (kill-append (buffer-substring beg end) (< end beg))
        (kill-ring-save beg end)))
    (kill-append "\n" nil)
    (beginning-of-line (or (and arg (1+ arg)) 2))
    (if (and arg (not (= 1 arg))) (message "%d lines copied" arg)))

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
(global-unset-key (kbd "C-f"))
(global-set-key (kbd "C-f") 'my-kill-ring-save)
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
;(require 'eval-after-load)
(setq ido-enable-flex-matching t)
(setq ido-everywhere)
(ido-mode t)


(require 'spice-mode)
(add-to-list 'auto-mode-alist '("\\.sp\\'" . spice-mode))

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

;; =============== Optional Loads ===============
(if (string-equal system-name "RPi")
 (load-library "load_ac131_linux"))

(if (eq system-type 'windows-nt)
  (progn
     (message "Loading windows init file")
     (load-library "load_ac131_win")
     (set-frame-font "Monaco 12")
     (require 'color-theme)
     (ignore-errors (color-theme-arjen))
     (global-set-key (vector (list 'control mouse-wheel-down-event)) (lambda () (interactive) (text-scale-decrease 1)))
     (global-set-key (vector (list 'control mouse-wheel-up-event)) (lambda () (interactive) (text-scale-increase 1)))
   )
)



(if (eq system-type 'gnu/linux)
   (progn
     (message "Loading gnu/linux init file")
    ;; (load-library "load_ac131_linux")
    ;; (load-library "load_ac131_teradyne")

   )
)
