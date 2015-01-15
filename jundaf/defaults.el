;;; defaults.el --- The default configurations and global key bindings.
;;
;; Copyright (c) 2015 Junda Feng
;;
;; Author: Junda Feng <fengh@neusoft.com>

;;; Commentary:
;; The default configurations and global key bindings.

;;; Code:

;; No welcome screen
(setq inhibit-splash-screen t)

;; Default to better frame titles
(setq frame-title-format
      (concat "%b - emacs@" (system-name)))

(menu-bar-mode t)
(scroll-bar-mode t)
(line-number-mode t)

(require 'whitespace)
(global-whitespace-mode t)
(setq whitespace-style '(face empty tabs trailing lines-tail))

;; No Chinese in Org timestamp
(setq system-time-locale "C")

;; Default to unified diffs
(setq diff-switches "-u")

(cua-mode t)
(ido-mode t)

(global-auto-revert-mode t)
(recentf-mode t)

;; C-x C-j opens dired with the cursor right on the file you're editing
(require 'dired-x)

;; Changes the window configuration with 'C-c left' and 'C-c right'.
(when (fboundp 'winner-mode)
  (winner-mode))

;; Move point from window to window with Shift and the arrow keys.
;; (windmove-default-keybindings)
;; The default keybindings conflict with CUA mode.

;; Global keybindings
;;
(global-set-key (kbd "M-<RET>") 'complete-symbol)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c C-f") 'recentf-open-files)
(global-set-key (kbd "C-c r") 'remember)
(global-set-key (kbd "<f8>") 'speedbar-get-focus)

;; Org global keybindings
;;
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)

;; Register convinience
;;
(global-set-key (kbd "<f12>")
                (lambda (char)
                  (interactive "cInsert Register:")
                  (insert-register char 't)))

(global-set-key (kbd "<C-f12>")
                (lambda (char)
                  (interactive "cCopy to Register:")
                  (copy-to-register char (region-beginning) (region-end))
                  (cua-cancel)))

(global-set-key (kbd "<C-S-f12>")
                (lambda (char)
                  (interactive "cCut to Register:")
                  (copy-to-register char (region-beginning) (region-end))
                  (cua-delete-region)))

;;; defaults.el ends here
