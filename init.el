(require 'package)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)
(require 'cl)

(defvar imxxb/packages '(
			 evil
			 htmlize
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
(dolist (pkg imxxb/packages)
  (when (not (package-installed-p pkg))
  (package-install pkg)
  ))


(set-default-font "Inconsolata-12")
(global-set-key "\C-ca" 'org-agenda)
(toggle-truncate-lines 1)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "<f1>") 'eval-buffer)
(evil-mode 1)
