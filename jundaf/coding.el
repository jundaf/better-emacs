;;; coding.el --- The configurations for programming.
;;
;; Copyright (c) 2015 Junda Feng
;;
;; Author: Junda Feng <fengh@neusoft.com>

;;; Commentary:
;; The configurations for programming.

;;; Code:

;; this will make sure spaces are used instead of tabs
(setq indent-tabs-mode nil)

(which-function-mode t)

;; Default coding style for C/Java
(setq c-default-style
      '((java-mode . "java") (awk-mode . "awk") (other . "linux")))

;; CC Mode.
(add-hook 'c-mode-common-hook (lambda ()
                                (imenu-add-menubar-index)))

;; Python Mode
(add-hook 'python-mode-hook (lambda ()
                              (imenu-add-menubar-index)))

;; Gnu Global Mode
(autoload 'gtags-mode "gtags"
  "Use GLOBAL as the tag system of Emacs editor instead of etags." t)

;; Svn Status Mode
(autoload 'svn-status "psvn"
  "Examine the status of Subversion working copy in directory DIR." t)

;; Lua-mode
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; Vala-mode
(autoload 'vala-mode "vala-mode" "Major mode for editing Vala code." t)
(add-to-list 'auto-mode-alist '("\\.vala$" . vala-mode))
(add-to-list 'auto-mode-alist '("\\.vapi$" . vala-mode))
(add-to-list 'file-coding-system-alist '("\\.vala$" . utf-8))
(add-to-list 'file-coding-system-alist '("\\.vapi$" . utf-8))

;; Shell-mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

;;; coding.el ends here
