
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/elisp")
(require 'init-loader)
(custom-set-variables
 '(init-loader-show-log-after-init nil))
(init-loader-load "~/.emacs.d/inits")
