(require 'package)

(setq package-archives '(
			 ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ))
(require 'cl)

(defvar imxxb/packages '(
			 evil
			 htmlize
			 monokai-theme
			 ox-reveal
			 )
  "Default packages")

(setq package-selected-packages imxxb/packages)

(require 'init-better-defaults)

(require 'org-install)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "configuration.org" user-emacs-directory))
(org-babel-load-file (expand-file-name "_configuration.org" user-emacs-directory))


(package-refresh-contents)
(package-install-selected-packages)


(global-set-key "\C-ca" 'org-agenda)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "<f1>") 'eval-buffer)
(evil-mode 1)
(load-theme 'monokai 1)
(set-frame-font "Inconsolata-13")

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(require 'ox-reveal)
(provide 'init-packages)
