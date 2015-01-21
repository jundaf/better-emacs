;;; init.el --- The Emacs configuration entry point.
;;
;; Copyright (c) 2015 Junda Feng
;;
;; Author: Junda Feng <fengh@neusoft.com>

;;; Commentary:
;; Load configurations from jundaf and vendor dirs.

;;; Code:

(defvar jdf-emacs-dir (expand-file-name "jundaf" user-emacs-directory)
  "The home of the personal configuration.")

(defvar jdf-vendor-dir (expand-file-name "vendor" user-emacs-directory)
  "The home of the third party modules.")

;; config changes made through the customize UI will be store here
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(add-to-list 'load-path jdf-emacs-dir)
(add-to-list 'load-path jdf-vendor-dir)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/") t))

(load "coding")
(load "defaults")
(load "goodies")

;;; init.el ends here
