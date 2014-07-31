;; Mode configuration for my Emacs config
;; (c) Jack McCracken 2014 under GPL v3 unless otherwise stated. See LICENSE.

;; Enhanced Ruby mode
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;; Smartparens
(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
  (sp-local-pair "<" ">")
  (sp-local-pair "<%" "%>"))

(textmate-mode 1)

;; GitHub Flavoured Markdown
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))