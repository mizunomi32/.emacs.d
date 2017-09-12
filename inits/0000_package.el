;;;; パッケージ管理システム

(require 'package)

;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)
;; パッケージ情報の更新
;;(package-refresh-contents)

(defvar hp-use-package-list
  '(
    ;; 以下に使用するパッケージを記述する
    auto-complete
    ;; 検索する機能拡張
    helm
    powerline
    )
  )

;;; 未インストールのパッケージを探す
(require 'cl)
(let ((not-installed 
       (loop for x in hp-use-package-list
             when (not (package-installed-p x)) collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist 
        (pkg not-installed)
        (package-install pkg))))
