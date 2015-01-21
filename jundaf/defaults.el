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

(tool-bar-mode -1)
(show-paren-mode t)
(column-number-mode t)

(cua-mode t)
(icomplete-mode t)
(ido-mode t)
(setq ido-enable-flex-matching t)

(global-auto-revert-mode t)
(recentf-mode t)

;; C-x C-j opens dired with the cursor right on the file you're editing
(require 'dired-x)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))

(require 'whitespace)
(global-whitespace-mode t)
(setq whitespace-style '(face empty tabs trailing lines-tail))

;; Changes the window configuration with 'C-c left' and 'C-c right'.
(when (fboundp 'winner-mode)
  (winner-mode))

(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)

;; Global keybindings
;;
(global-set-key (kbd "M-<RET>") 'complete-symbol)
(global-set-key (kbd "C-c C-f") 'recentf-open-files)
(global-set-key (kbd "C-c SPC") 'set-mark-command)
(global-set-key (kbd "C-c r") 'remember)
(global-set-key (kbd "<f8>") 'speedbar-get-focus)

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-z") 'zap-up-to-char)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Org global keybindings
;;
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cl" 'org-store-link)

;; Use only ASCII in Org timestamp
(setq system-time-locale "C")

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

(setq x-select-enable-clipboard t
      save-interprogram-paste-before-kill t
      mouse-yank-at-point t)

(setq apropos-do-all t
      require-final-newline t
      visible-bell t)

(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;;; defaults.el ends here
