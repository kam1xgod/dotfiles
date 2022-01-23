;;; most of my emacs configuration made with Uncle Dave's YouTube videos.
;;; Sure, i'll add some more stuff from other sources, but one man gave me this basic things.
;;; https://www.youtube.com/channel/UCDEtZ7AKmwS0_GNJog01D2g


;;; necessary stuff for packages here.
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)

;;; bootstrapping use-package for easy installing other packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; actually, we can turn on auto ensure thing.
;;; if you don't want to write ":ensure t" everytime.
;;; if you comment or remove this line make sure you put ensure in every package.
;;; I will leave ensure in every package for some kind of compatibility but be careful.
(setq use-package-always-ensure t)

;;; in *Messages* buffer we will se which packages are loading when open emacs.
;;; probably, also it will show how much time loading of packages took.
(setq use-package-verbose t)

;;; spacemacs theme. making sure it's installed now.
(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

;;; font configuration

(set-face-attribute 'default nil :font "Source Code Pro" :height 100)

;;; this can be moved, i guess. but I'll leave it here.
;;; simply alias for not typing "yes" everytime when
;;; for example leaving shell.
(defalias 'yes-or-no-p 'y-or-n-p)

;;; actually the config.
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
;;; things down below is personal most of the time.
;;; change font, theme, etc.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(custom-enabled-themes '(doom-palenight))
 '(custom-safe-themes
   '("47db50ff66e35d3a440485357fb6acb767c100e135ccdf459060407f8baea7b2" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(package-selected-packages
   '(company-css rustic-clippy rust-clippy clippy-rust clippy web-beautify company-web-html xref-js2 js2-refactor js2-mode web-mode company-web emmet-mode auto-package-update yasnippet rustic lsp-clients company-lsp cargo rust-mode toml-mode lsp-ui lsp-mode company flycheck-rust flycheck visual-fill-column evil-magit magit counsel-projectile projectile hydra evil-collection evil general doom-themes helpful ivy-rich counsel doom-modeline diminish spaceline dashboard rainbow-delimiters sudo-edit hungry-delete switch-window rainbow-mode avy smex ido-vertical-mode beacon spacemacs-theme which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "ADBO" :family "Source Code Pro")))))
