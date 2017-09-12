;; 環境を日本語、UTF-8にする
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; スタートアップメッセージを表示させない
(setq inhibit-startup-message t)

;; バックアップファイルを作成させない
(setq make-backup-files nil)

;; 終了時にオートセーブファイルを削除する
(setq delete-auto-save-files t)

;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; (yes or no?)を(y or n?)に
(defalias 'yes-or-no-p 'y-or-n-p)

;; beep音を消す
(defun my-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))
(setq ring-bell-function 'my-bell-function)
;; 行数を表示する
(global-linum-mode t)

;; 5秒操作ないとカーソル点滅させる
(setq blink-cursor-interval 0.5)  ;点滅周期
(setq blink-cursor-delay 5.0)     ;点滅するまでの時間
(blink-cursor-mode 1)             ;ブリンクモードON!

;; 対応する括弧を光らせる
;;(setq show-paren-delay 0)              ; 表示までの秒数。初期値は0.125
(show-paren-mode t)
;; スクロールバーを表示しない
(scroll-bar-mode nil)

;;; フォントサイズ変更の設定
; C-↑ か C-+ で拡大
(global-set-key [(control up)] (lambda () (interactive) (text-scale-increase 1)))
(global-set-key [(control +)] (lambda () (interactive) (text-scale-increase 1)))

; C-↓ か C–で縮小
(global-set-key [(control down)] (lambda () (interactive) (text-scale-decrease 1)))
(global-set-key [(control -)] (lambda () (interactive) (text-scale-decrease 1)))

; \C-0 でデフォルトに戻す
(global-set-key [(control ?0)] (lambda () (interactive) (text-scale-increase 0)))

