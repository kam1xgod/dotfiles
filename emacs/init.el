;;; most of my emacs configuration made with Uncle Dave's YouTube videos.
;;; Sure, i'll add some more stuff from other sources, but one man gave me this basic things.
;;; https://www.youtube.com/channel/UCDEtZ7AKmwS0_GNJog01D2g


;;; necessary stuff here.
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;;; bootstrapping use-package for easy installing other packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; spacemacs theme. making sure it's installed now.
(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

;;; org-tempo for org-mode shortcuts (i.e. <s <TAB>)
(require 'org-tempo)

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
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(package-selected-packages
   '(diminish spaceline dashboard rainbow-delimiters sudo-edit hungry-delete switch-window rainbow-mode avy smex ido-vertical-mode beacon spacemacs-theme which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "ADBO" :family "Source Code Pro")))))
