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

(package-refresh-contents)
(package-install-selected-packages)

(provide 'init-packages)
