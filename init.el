(require 'package)

(setq package-archives '(
			 ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ))
(package-initialize)
(require 'cl)

(defvar imxxb/packages '(
			 evil
			 htmlize
			 monokai-theme
			 ox-reveal
			 )
  "Default packages")

(setq package-selected-packages imxxb/packages)

;;(defun imxxb/packages-installed-p ()
;;  (loop for pkg in imxxb/packages
;;	when
;;	(not (package-installed-p pkg))
;;	do
;;	(return nil)
;;	finally (return t)))

;;(unless (imxxb/packages-installed-p)
;;  (message "%s" "Refreshing package database...")
;;  (package-refresh-contents)
;;  (dolist (pkg imxxb/packages)
;;    (when (not (package-installed-p pkg))
;;      (package-install pkg))))
;;(dolist (pkg imxxb/packages)
;;  (when (not (package-installed-p pkg))
;;  (package-install pkg)
;;  ))
(package-refresh-contents)
(package-install-selected-packages)


(global-set-key "\C-ca" 'org-agenda)
(toggle-truncate-lines 1)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "<f1>") 'eval-buffer)
(evil-mode 1)
(load-theme 'monokai 1)
(set-default-font "Inconsolata-12")

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(require 'ox-reveal)

;;(prefer-coding-system 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-language-environment 'utf-8)
;;(set-selection-coding-system 'utf-8)
