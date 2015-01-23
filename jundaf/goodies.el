;;; goodies.el --- The Emacs goodies.
;;
;; Copyright (c) 2015 Junda Feng
;;
;; Author: Junda Feng <fengh@neusoft.com>

;;; Commentary:
;; The customization for the third party modules

;;; Code:
(autoload 'ace-jump-mode "ace-jump-mode"
  "Emacs quick move minor mode" t)
(global-set-key (kbd "C-c j") 'ace-jump-mode)
(global-set-key (kbd "C-c k") 'ace-jump-char-mode)
(global-set-key (kbd "C-c l") 'ace-jump-line-mode)

;; Visible bookmarks
(require 'bm)
(global-set-key (kbd "<f1> <f2>") 'bm-toggle)
(global-set-key (kbd "<f2>") 'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)
(global-set-key (kbd "<C-f2>") 'bm-toggle)

;; Make M-y invoke browse-kill-ring
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "<f8>") 'smex)

(require 'undo-tree)
(global-undo-tree-mode)
(when (fboundp 'diminish)
  (diminish 'undo-tree-mode))

(when (featurep 'expand-region)
  (global-set-key (kbd "C-=") 'er/expand-region))

;;; goodies.el ends here
