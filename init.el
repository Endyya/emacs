;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


;; Initializes the package infrastructure
(package-initialize)

;; If there are no archived package contents, refresh them
(unless package-archive-contents (package-refresh-contents))
(use-package python
  :ensure t
  :hook ((python-ts-mode . eglot-ensure))
  :mode (("\\.py\\'" . python-ts-mode))
  )

(setq tab-always-indent 'complete)
(global-company-mode)

;; ===================================
;; Basic Customization
;; ===================================

(setq inhibit-startup-message t)    ;; Hide the startup message
(load-theme 'deeper-blue t)            ;; Load material theme

(require 'auto-complete-config)

