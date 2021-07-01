;;; init.el --- entry point to emacs cofiguration.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2017 Patrick Arthur Brown
;;;
;;; Code:

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq ispell-program-name "/usr/local/bin/ispell")

(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

(require 'use-package)

;; Load path
(add-to-list 'load-path "~/.emacs.d/lib")

;; Secrets
(when (file-exists-p "~/.emacs.d/secrets.el")
  (load "~/.emacs.d/secrets"))

;; Customization file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'pb-defaults)
(require 'pb-util)
(require 'pb-gui)
(require 'pb-cli)
(require 'pb-keybinds)
(require 'pb-org)
(require 'pb-go)
(require 'pb-ruby)
(require 'pb-python)
(require 'pb-javascript)

;;; init.el ends here
