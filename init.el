(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)
(require 'init-better-defaults)


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

;;(prefer-coding-system 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-language-environment 'utf-8)
;;(set-selection-coding-system 'utf-8)
