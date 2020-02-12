(setq package-archives 
	    '(("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
	      ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	      ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
	      ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)
(unless (package-installed-p 'use-package) ; unless it is already installed
	(package-refresh-contents) ; updage packages archive
	(package-install 'use-package)) ; and install the most recent version of use-package

(require 'use-package) ; guess what this one does too ?

(use-package org-install)
(use-package ob-tangle)

(org-babel-load-file (expand-file-name "posts/2020-02-11-how-to-build-my-emacs.org" user-emacs-directory))


;;(prefer-coding-system 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-language-environment 'utf-8)
;;(set-selection-coding-system 'utf-8)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (monokai-theme counsel swiper ivy which-key general magit evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
