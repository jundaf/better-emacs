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
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

;; Visible bookmarks
(require 'bm)
(global-set-key (kbd "<f2>") 'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)
(global-set-key (kbd "<C-f2>") 'bm-toggle)

;; Make M-y invoke browse-kill-ring
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(require 'undo-tree)
(global-undo-tree-mode)

(when (featurep 'psvn)
  (setq 'svn-status-hide-unmodified t)
  (global-set-key (kbd "C-c s") 'svn-status))

(when (featurep 'expand-region)
  (global-set-key (kbd "C-=") 'er/expand-region))

(when (featurep 'helm)
  (global-set-key (kbd "C-c h") 'helm-mini)
  (global-set-key (kbd "C-c i") 'helm-imenu)
  (global-set-key (kbd "C-c j") 'helm-filtered-bookmarks)
  (global-set-key (kbd "C-c o") 'helm-occur))

;;; goodies.el ends here
