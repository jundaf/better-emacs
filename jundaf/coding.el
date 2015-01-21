;;; coding.el --- The configurations for programming.
;;
;; Copyright (c) 2015 Junda Feng
;;
;; Author: Junda Feng <fengh@neusoft.com>

;;; Commentary:
;; The configurations for programming.

;;; Code:

;; Make sure spaces are used instead of tabs
(setq indent-tabs-mode nil)

;; Default to unified diffs
(setq diff-switches "-u")

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

;; Shell Mode
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

;;; coding.el ends here
